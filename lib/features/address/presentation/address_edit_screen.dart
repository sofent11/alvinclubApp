import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_theme.dart';
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
  
  String? _selectedCountry;
  bool _isDefault = false;

  @override
  void initState() {
    super.initState();
    final a = widget.address;
    _firstNameController = TextEditingController(text: a?.firstName);
    _lastNameController = TextEditingController(text: a?.lastName);
    _phoneController = TextEditingController(text: a?.phone);
    _emailController = TextEditingController(text: a?.email);
    _address1Controller = TextEditingController(text: a?.addressLine1);
    _address2Controller = TextEditingController(text: a?.addressLine2);
    _cityController = TextEditingController(text: a?.city);
    _provinceController = TextEditingController(text: a?.province);
    _zipController = TextEditingController(text: a?.zipCode);
    _selectedCountry = a?.country;
    _isDefault = a?.isDefault ?? false;
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
    super.dispose();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    if (_selectedCountry == null) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Please select a country')));
      return;
    }

    final address = ShippingAddress(
      id: widget.address?.id ?? '',
      firstName: _firstNameController.text,
      lastName: _lastNameController.text,
      phone: _phoneController.text,
      email: _emailController.text,
      country: _selectedCountry!,
      province: _provinceController.text,
      city: _cityController.text,
      district: '', // District is optional or can be added if needed
      addressLine1: _address1Controller.text,
      addressLine2: _address2Controller.text.isEmpty ? null : _address2Controller.text,
      zipCode: _zipController.text,
      isDefault: _isDefault,
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
          TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Cancel')),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Delete', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );

    if (confirmed == true && mounted) {
      await ref.read(addressControllerProvider.notifier).deleteAddress(widget.address!.id);
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
        title: Text(widget.address == null ? 'New Address' : 'Edit Address'),
        actions: [
          if (widget.address != null)
            IconButton(
              icon: const Icon(Icons.delete_outline, color: Colors.red),
              onPressed: state.isLoading ? null : _delete,
            ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: _buildTextField('First Name', _firstNameController)),
                  const SizedBox(width: 12),
                  Expanded(child: _buildTextField('Last Name', _lastNameController)),
                ],
              ),
              _buildTextField('Phone Number', _phoneController, keyboardType: TextInputType.phone),
              _buildTextField('Email (Optional)', _emailController, keyboardType: TextInputType.emailAddress, isRequired: false),
              
              const SizedBox(height: 16),
              countriesAsync.when(
                data: (countries) => DropdownButtonFormField<String>(
                  initialValue: _selectedCountry,
                  decoration: const InputDecoration(labelText: 'Country', border: OutlineInputBorder()),
                  items: countries.map((c) => DropdownMenuItem(value: c, child: Text(c))).toList(),
                  onChanged: (val) => setState(() => _selectedCountry = val),
                  validator: (val) => val == null ? 'Required' : null,
                ),
                loading: () => const LinearProgressIndicator(),
                error: (_, _) => _buildTextField('Country', TextEditingController(text: _selectedCountry)),
              ),
              
              const SizedBox(height: 16),
              _buildTextField('State/Province', _provinceController),
              _buildTextField('City', _cityController),
              _buildTextField('Address Line 1', _address1Controller),
              _buildTextField('Address Line 2 (Optional)', _address2Controller, isRequired: false),
              _buildTextField('Zip Code', _zipController),
              
              SwitchListTile(
                title: const Text('Set as Default Address'),
                value: _isDefault,
                onChanged: (val) => setState(() => _isDefault = val),
                activeThumbColor: context.appColors.tint,
              ),
              
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                child: ThemedButton(
                  label: state.isLoading ? 'Saving...' : 'Save Address',
                  loading: state.isLoading,
                  onPressed: state.isLoading ? null : _save,
                ),
              ),
              if (state.hasError)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(state.error.toString(), style: const TextStyle(color: Colors.red)),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
    String label,
    TextEditingController controller, {
    TextInputType? keyboardType,
    bool isRequired = true,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        validator: (val) {
          if (isRequired && (val == null || val.isEmpty)) {
            return 'This field is required';
          }
          return null;
        },
      ),
    );
  }
}
