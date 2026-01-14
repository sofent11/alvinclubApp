import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../data/repositories/address_repository.dart';
import '../../../shared/widgets/themed_button.dart';
import '../application/address_providers.dart';

class AddressEditScreen extends ConsumerStatefulWidget {
  const AddressEditScreen({super.key, this.address});

  final ShippingAddress? address;

  @override
  ConsumerState<AddressEditScreen> createState() => _AddressEditScreenState();
}

class _AddressEditScreenState extends ConsumerState<AddressEditScreen> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController _phoneController;
  late TextEditingController _emailController;
  late TextEditingController _address1Controller;
  late TextEditingController _address2Controller;
  late TextEditingController _cityController;
  late TextEditingController _provinceController;
  late TextEditingController _zipController;
  late TextEditingController _securityCodeController;
  late TextEditingController _deliveryInstructionController;

  String? _selectedCountry;
  bool _isDefault = false;
  PhoneRule? _phoneRule;
  String _phonePrefix = '1';

  @override
  void initState() {
    super.initState();
    final a = widget.address;
    _firstNameController = TextEditingController(text: a?.firstName);
    _lastNameController = TextEditingController(text: a?.lastName);

    // Phone initialization logic
    if (a?.phone != null && a!.phone.contains('+')) {
      final parts = a.phone.split('+');
      if (parts.length == 2) {
        // We assume the stored format is Code+Number
        // We don't set the prefix from the phone string directly,
        // because the prefix depends on the Country.
        // However, we set the number part to the controller.
        _phoneController = TextEditingController(text: parts[1]);
      } else {
        _phoneController = TextEditingController(text: a.phone);
      }
    } else {
      _phoneController = TextEditingController(text: a?.phone);
    }

    _emailController = TextEditingController(text: a?.email);
    _address1Controller = TextEditingController(text: a?.addressLine1);
    _address2Controller = TextEditingController(text: a?.addressLine2);
    _cityController = TextEditingController(text: a?.city);
    _provinceController = TextEditingController(text: a?.province);
    _zipController = TextEditingController(text: a?.zipCode);
    _securityCodeController = TextEditingController(text: a?.securityCode);
    _deliveryInstructionController = TextEditingController(
      text: a?.deliveryInstruction,
    );
    _selectedCountry = a?.countryCode;
    _isDefault = a?.isDefault ?? false;

    if (_selectedCountry != null) {
      _fetchPhoneRules(_selectedCountry!);
      // Set prefix directly without setState in initState
      _phonePrefix = ref
          .read(addressRepositoryProvider)
          .getPhoneCode(_selectedCountry!);
    }
  }

  void _updatePhonePrefix(String countryCode) {
    final code = ref.read(addressRepositoryProvider).getPhoneCode(countryCode);
    setState(() {
      _phonePrefix = code;
    });
  }

  Future<void> _fetchPhoneRules(String countryCode) async {
    final rule = await ref
        .read(addressRepositoryProvider)
        .getPhoneRules(countryCode);
    if (mounted) {
      setState(() {
        _phoneRule = rule;
      });
    }
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _address1Controller.dispose();
    _address2Controller.dispose();
    _cityController.dispose();
    _provinceController.dispose();
    _zipController.dispose();
    _securityCodeController.dispose();
    _deliveryInstructionController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    if (_selectedCountry == null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Please select a country')));
      return;
    }

    final countries = ref.read(supportCountriesProvider).value ?? [];
    final countryName = countries
        .firstWhere(
          (c) => c.code == _selectedCountry,
          orElse: () => CountryData(code: _selectedCountry!, name: ''),
        )
        .name;

    final address = ShippingAddress(
      id: widget.address?.id ?? '',
      firstName: _firstNameController.text,
      lastName: _lastNameController.text,
      phone: '$_phonePrefix+${_phoneController.text}',
      email: _emailController.text,
      country: countryName.isEmpty ? _selectedCountry! : countryName,
      countryCode: _selectedCountry!,
      province: _provinceController.text,
      city: _cityController.text,
      district: '',
      addressLine1: _address1Controller.text,
      addressLine2: _address2Controller.text.isEmpty
          ? null
          : _address2Controller.text,
      zipCode: _zipController.text,
      isDefault: _isDefault,
      securityCode: _securityCodeController.text.isEmpty
          ? null
          : _securityCodeController.text,
      deliveryInstruction: _deliveryInstructionController.text.isEmpty
          ? null
          : _deliveryInstructionController.text,
    );

    final notifier = ref.read(addressControllerProvider.notifier);
    if (widget.address == null) {
      await notifier.createAddress(address);
    } else {
      await notifier.updateAddress(address);
    }

    if (mounted && !ref.read(addressControllerProvider).hasError) {
      context.pop();
    }
  }

  Future<void> _delete() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Address'),
        content: const Text('Are you sure you want to delete this address?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel', style: TextStyle(fontSize: 14)),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text(
              'Delete',
              style: TextStyle(color: Colors.red, fontSize: 14),
            ),
          ),
        ],
      ),
    );

    if (confirmed == true && mounted) {
      await ref
          .read(addressControllerProvider.notifier)
          .deleteAddress(widget.address!.id);
      if (mounted && !ref.read(addressControllerProvider).hasError) {
        context.pop();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final countriesAsync = ref.watch(supportCountriesProvider);
    final state = ref.watch(addressControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.address == null ? 'New Address' : 'Edit Address',
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        actions: [
          if (widget.address != null)
            IconButton(
              icon: const Icon(Icons.delete_outline, color: Colors.red),
              onPressed: state.isLoading ? null : _delete,
            ),
        ],
      ),
      body: Column(
        children: [
          // Top Banner
          Container(
            color: const Color(0xFFE6FFFA),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Row(
              children: const [
                Icon(
                  Icons.verified_user_outlined,
                  color: Colors.green,
                  size: 20,
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "Secure Transaction & Data Protection Guaranteed",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 1. Country (Single Country Logic)
                    countriesAsync.when(
                      data: (countries) {
                        // Auto-select if only one
                        if (countries.length == 1 &&
                            _selectedCountry != countries.first.code) {
                          // Defer setState to next frame to avoid build error
                          Future.microtask(() {
                            if (mounted) {
                              setState(() {
                                _selectedCountry = countries.first.code;
                                _fetchPhoneRules(_selectedCountry!);
                                _updatePhonePrefix(_selectedCountry!);
                              });
                            }
                          });
                        }

                        // If only one, show as disabled field or text
                        if (countries.length == 1) {
                          return _buildTextField(
                            'Country',
                            TextEditingController(text: countries.first.name),
                            enabled: false,
                          );
                        }

                        return Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Country',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                              const SizedBox(height: 8),
                              DropdownButtonFormField<String>(
                                // value: _selectedCountry, // Removed deprecated value
                                decoration: _inputDecoration(),
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                                items: countries
                                    .map(
                                      (c) => DropdownMenuItem(
                                        value: c.code,
                                        child: Text(
                                          c.name,
                                          style: const TextStyle(fontSize: 14),
                                        ),
                                      ),
                                    )
                                    .toList(),
                                onChanged: (val) {
                                  setState(() => _selectedCountry = val);
                                  if (val != null) {
                                    _fetchPhoneRules(val);
                                    _updatePhonePrefix(val);
                                  }
                                },
                                validator: (val) =>
                                    val == null ? 'Required' : null,
                              ),
                            ],
                          ),
                        );
                      },
                      loading: () => const LinearProgressIndicator(),
                      error: (_, _) => _buildTextField(
                        'Country',
                        TextEditingController(text: _selectedCountry),
                      ),
                    ),

                    // 2. Name & Phone
                    Row(
                      children: [
                        Expanded(
                          child: _buildTextField(
                            'First Name',
                            _firstNameController,
                            hintText: 'First Name*',
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _buildTextField(
                            'Last Name',
                            _lastNameController,
                            hintText: 'Last Name*',
                          ),
                        ),
                      ],
                    ),
                    _buildPhoneField(),
                    // Email (Keeping it as it was)
                    _buildTextField(
                      'Email (Optional)',
                      _emailController,
                      keyboardType: TextInputType.emailAddress,
                      isRequired: false,
                      hintText: 'Email*',
                    ),

                    const SizedBox(height: 8),

                    // 3. Address 1
                    _buildTextField(
                      'Address 1',
                      _address1Controller,
                      hintText: 'Street address, P.O. box, company name, c/o',
                    ),

                    // 4. Address 2
                    _buildTextField(
                      'Address 2',
                      _address2Controller,
                      hintText: 'Apartment, suite, unit, building, floor, etc',
                      isRequired: false,
                    ),

                    // 5. Zip Code
                    _buildTextField(
                      'Zip code',
                      _zipController,
                      hintText: 'For accurate street/room delivery*',
                    ),

                    // 6. City
                    _buildTextField('City', _cityController, hintText: 'City*'),

                    // 7. State/Province
                    _buildTextField(
                      'State/Province/Region',
                      _provinceController,
                      hintText: 'State / Province / Region*',
                    ),

                    // 8. Security Code
                    _buildTextField(
                      'Security code (optional)',
                      _securityCodeController,
                      isRequired: false,
                      hintText: 'Need password/key card for entry?',
                    ),

                    // 9. Delivery Instructions
                    _buildTextField(
                      'Add delivery instructions (optional)',
                      _deliveryInstructionController,
                      isRequired: false,
                      maxLines: 3,
                      hintText:
                          'Do we need more directions for this address? Provide details such as building description, a nearby landmark, or other',
                    ),

                    // 10. Default
                    SwitchListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const Text(
                        'Set as Default Address',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      value: _isDefault,
                      onChanged: (val) => setState(() => _isDefault = val),
                      activeThumbColor:
                          Colors.purple, // Match button style roughly
                    ),

                    const SizedBox(height: 32),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ThemedButton(
                        label: state.isLoading ? 'Saving...' : 'Save',
                        loading: state.isLoading,
                        onPressed: state.isLoading ? null : _save,
                        backgroundColor: Colors.purple,
                        size: ThemedButtonSize.sm,
                      ),
                    ),
                    if (state.hasError)
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          state.error.toString(),
                          style: const TextStyle(color: Colors.red),
                        ),
                      ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPhoneField() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Phone Number',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: _phoneController,
            keyboardType: TextInputType.phone,
            style: const TextStyle(fontSize: 14),
            decoration: _inputDecoration(hintText: 'Phone Number*').copyWith(
              prefixIcon: IntrinsicHeight(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(width: 12),
                    Text(
                      '+$_phonePrefix',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const VerticalDivider(
                      color: Color(0xFFE0E0E0),
                      thickness: 1,
                      indent: 8,
                      endIndent: 8,
                      width: 1,
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ),
              prefixIconConstraints: const BoxConstraints(
                minWidth: 0,
                minHeight: 0,
              ),
            ),
            validator: (val) {
              if (val == null || val.isEmpty) {
                return 'This field is required';
              }
              if (_phoneRule != null && val.isNotEmpty) {
                if (_phoneRule!.minLength != null &&
                    val.length < _phoneRule!.minLength!) {
                  return 'Phone number too short (min ${_phoneRule!.minLength})';
                }
                if (_phoneRule!.maxLength != null &&
                    val.length > _phoneRule!.maxLength!) {
                  return 'Phone number too long (max ${_phoneRule!.maxLength})';
                }
                if (_phoneRule!.regex != null) {
                  final reg = RegExp(_phoneRule!.regex!);
                  if (!reg.hasMatch(val)) {
                    return 'Invalid phone number format';
                  }
                }
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(
    String label,
    TextEditingController controller, {
    TextInputType? keyboardType,
    bool isRequired = true,
    String? hintText,
    bool enabled = true,
    int maxLines = 1,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            enabled: enabled,
            maxLines: maxLines,
            style: const TextStyle(fontSize: 14),
            decoration: _inputDecoration(hintText: hintText),
            validator: (val) {
              if (isRequired && (val == null || val.isEmpty)) {
                return 'This field is required';
              }
              // Simple Phone Validation using Rule
              if (label == 'Phone Number' &&
                  _phoneRule != null &&
                  val != null &&
                  val.isNotEmpty) {
                if (_phoneRule!.minLength != null &&
                    val.length < _phoneRule!.minLength!) {
                  return 'Phone number too short (min ${_phoneRule!.minLength})';
                }
                if (_phoneRule!.maxLength != null &&
                    val.length > _phoneRule!.maxLength!) {
                  return 'Phone number too long (max ${_phoneRule!.maxLength})';
                }
                if (_phoneRule!.regex != null) {
                  final reg = RegExp(_phoneRule!.regex!);
                  if (!reg.hasMatch(val)) {
                    return 'Invalid phone number format';
                  }
                }
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  InputDecoration _inputDecoration({String? hintText}) {
    return InputDecoration(
      filled: true,
      fillColor: Colors.white,
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.grey[400], fontSize: 13),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Colors.grey[300]!),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Colors.grey[300]!),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.purple),
      ),
    );
  }
}
