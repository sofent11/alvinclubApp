import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/theme/app_theme.dart';
import '../../../shared/widgets/themed_button.dart';
import '../application/profile_providers.dart';

class ProfileEditScreen extends ConsumerStatefulWidget {
  const ProfileEditScreen({super.key});

  @override
  ConsumerState<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends ConsumerState<ProfileEditScreen> {
  final _nicknameController = TextEditingController();
  XFile? _imageFile;
  int? _gender;
  String? _birthday;

  @override
  void initState() {
    super.initState();
    // Initial data will be populated from the provider when available
  }

  @override
  void dispose() {
    _nicknameController.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() => _imageFile = image);
    }
  }

  Future<void> _save() async {
    await ref.read(profileControllerProvider.notifier).updateProfile(
      nickname: _nicknameController.text,
      avatarFile: _imageFile,
      gender: _gender,
      birthday: _birthday,
    );

    if (mounted && !ref.read(profileControllerProvider).hasError) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Profile updated successfully')));
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final profileAsync = ref.watch(userProfileProvider);
    final state = ref.watch(profileControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: profileAsync.when(
        data: (profile) {
          // Sync controllers only once or when needed
          if (_nicknameController.text.isEmpty && profile.nickname != null) {
            _nicknameController.text = profile.nickname!;
            _gender ??= profile.gender;
            _birthday ??= profile.birthday;
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                GestureDetector(
                  onTap: _pickImage,
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.grey[200],
                        backgroundImage: _imageFile != null
                            ? FileImage(File(_imageFile!.path)) as ImageProvider
                            : (profile.avatar != null ? CachedNetworkImageProvider(profile.avatar!) : null),
                        child: _imageFile == null && profile.avatar == null
                            ? const Icon(Icons.person, size: 50, color: Colors.grey)
                            : null,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: context.appColors.tint,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.camera_alt, color: Colors.white, size: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                TextFormField(
                  controller: _nicknameController,
                  decoration: const InputDecoration(
                    labelText: 'Nickname',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 24),
                _buildGenderPicker(),
                const SizedBox(height: 24),
                _buildBirthdayPicker(),
                const SizedBox(height: 48),
                SizedBox(
                  width: double.infinity,
                  child: ThemedButton(
                    label: state.isLoading ? 'Saving...' : 'Save Changes',
                    loading: state.isLoading,
                    onPressed: state.isLoading ? null : _save,
                  ),
                ),
                if (state.hasError)
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(state.error.toString(), style: const TextStyle(color: Colors.red)),
                  ),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text('Error: $err')),
      ),
    );
  }

  Widget _buildGenderPicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Gender', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Row(
          children: [
            _GenderOption(
              label: 'Male',
              value: 1,
              selected: _gender == 1,
              onTap: () => setState(() => _gender = 1),
            ),
            const SizedBox(width: 16),
            _GenderOption(
              label: 'Female',
              value: 2,
              selected: _gender == 2,
              onTap: () => setState(() => _gender = 2),
            ),
            const SizedBox(width: 16),
            _GenderOption(
              label: 'Other',
              value: 0,
              selected: _gender == 0,
              onTap: () => setState(() => _gender = 0),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBirthdayPicker() {
    return InkWell(
      onTap: () async {
        final initialDate = _birthday != null ? DateTime.tryParse(_birthday!) : null;
        final picked = await showDatePicker(
          context: context,
          initialDate: initialDate ?? DateTime(2000),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );
        if (picked != null) {
          setState(() => _birthday = picked.toIso8601String().split('T').first);
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(_birthday ?? 'Select Birthday', style: TextStyle(color: _birthday == null ? Colors.grey[600] : Colors.black)),
            const Icon(Icons.calendar_today, size: 20, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}

class _GenderOption extends StatelessWidget {
  const _GenderOption({
    required this.label,
    required this.value,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final int value;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: selected ? colors.tint.withValues(alpha: 0.1) : Colors.transparent,
          border: Border.all(color: selected ? colors.tint : Colors.grey[300]!),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: selected ? colors.tint : Colors.black,
            fontWeight: selected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
