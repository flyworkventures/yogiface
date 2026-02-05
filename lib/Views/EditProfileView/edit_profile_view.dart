import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/Views/EditProfileView/widget/delete_dialog.dart';
import 'package:yogiface/Views/EditProfileView/widget/focusarea_bottomsheet.dart';
import 'package:yogiface/Views/EditProfileView/widget/skintype_bottomsheet.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/shared/custom_button.dart';
import 'package:yogiface/shared/custom_form_text_field.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';
import 'package:yogiface/utils/print.dart';

class EditProfileView extends HookConsumerWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Watch user data
    final userState = ref.watch(AllProviders.userProvider);
    final user = userState.value?.user;
    final profile = userState.value?.profile;

    final nameController = useTextEditingController(text: user?.fullName ?? '');
    final emailController = useTextEditingController(text: user?.email ?? '');
    final ageController =
        useTextEditingController(text: profile?.age?.toString() ?? '');

    final selectedGender = useState<String>(profile?.gender ?? 'female');
    final selectedSkinType = useState<String>(profile?.skinType ?? 'normal');
    final selectedFocusAreas = useState<Set<String>>(
      profile?.improvementAreas.toSet() ?? {},
    );
    final selectedWeight = useState<int>((profile?.weight ?? 60).toInt());
    final selectedHeight = useState<int>((profile?.height ?? 170).toInt());

    // Image Picker State
    final selectedImage = useState<File?>(null);
    final isLoading = useState(false);

    Future<void> pickImage() async {
      try {
        final ImagePicker picker = ImagePicker();
        final XFile? image = await picker.pickImage(
          source: ImageSource.gallery,
          imageQuality: 80,
        );

        if (image != null) {
          selectedImage.value = File(image.path);
        }
      } catch (e) {
        Print.error('Error picking image: $e');
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: colorScheme.onSurface),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          context.t.editProfile.title,
          style: AppTextStyles.latoBody(
            18,
            color: colorScheme.onSurface,
            weight: FontWeight.w600,
          ),
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSpacing.lg),

                // Profile Photo Section
                Center(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: ClipOval(
                              child: selectedImage.value != null
                                  ? Image.file(
                                      selectedImage.value!,
                                      fit: BoxFit.cover,
                                    )
                                  : user?.profilePictureUrl != null
                                      ? Image.network(
                                          user!.profilePictureUrl!,
                                          fit: BoxFit.cover,
                                          errorBuilder:
                                              (context, error, stackTrace) {
                                            return Image.asset(
                                                AppImages.profilephoto);
                                          },
                                        )
                                      : Image.asset(
                                          AppImages.profilephoto,
                                          fit: BoxFit.cover,
                                        ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: GestureDetector(
                              onTap: pickImage,
                              child: Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFE8F5F1),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.camera_alt_outlined,
                                  size: 18,
                                  color: Color(0xFF5BBFAA),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      TextButton(
                        onPressed: pickImage,
                        child: Text(
                          context.t.editProfile.changePhoto,
                          style: AppTextStyles.latoBody(
                            14,
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: AppSpacing.xl),

                // Full Name Field
                Text(
                  context.t.editProfile.fullName,
                  style: AppTextStyles.latoBody(
                    13,
                    color: AppColors.profileTitle,
                    weight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: AppSpacing.md),
                CustomFormTextField(
                  controller: nameController,
                  prefixIcon: Image(
                    image: AssetImage(AppIcons.editperson),
                  ),
                  fillColor: AppColors.profileTextFieldColor,
                  borderColor: Colors.transparent,
                  borderRadius: 15,
                ),

                const SizedBox(height: AppSpacing.xl),

                // E-mail Field
                Text(
                  context.t.editProfile.email,
                  style: AppTextStyles.latoBody(
                    13,
                    color: AppColors.profileTitle,
                    weight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: AppSpacing.md),
                CustomFormTextField(
                  controller: emailController,
                  readOnly: true,
                  prefixIcon: Image(
                    image: AssetImage(AppIcons.email),
                  ),
                  suffixIcon: Image(
                    image: AssetImage(AppIcons.lock),
                  ),
                  fillColor: AppColors.profileTextFieldColor,
                  borderColor: Colors.transparent,
                  borderRadius: 15,
                ),

                const SizedBox(height: AppSpacing.xl),

                // Age Field
                Text(
                  context.t.editProfile.age,
                  style: AppTextStyles.latoBody(
                    13,
                    color: AppColors.profileTitle,
                    weight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: AppSpacing.md),
                CustomFormTextField(
                  controller: ageController,
                  readOnly: true,
                  keyboardType: TextInputType.number,
                  prefixIcon: Image(
                    image: AssetImage(AppIcons.age),
                  ),
                  suffixIcon: Image(
                    image: AssetImage(AppIcons.lock),
                  ),
                  fillColor: AppColors.profileTextFieldColor,
                  borderColor: Colors.transparent,
                  borderRadius: 15,
                ),

                const SizedBox(height: AppSpacing.xl),

                // Gender Selection
                Text(
                  context.t.editProfile.gender,
                  style: AppTextStyles.latoBody(
                    13,
                    color: AppColors.profileTitle,
                    weight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: AppSpacing.md),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  spacing: 12,
                  children: [
                    Expanded(
                      child: _GenderChip(
                        label: context.t.onboarding.male,
                        icon: AppIcons.editmale,
                        isSelected: selectedGender.value == 'male',
                        onTap: () => selectedGender.value = 'male',
                      ),
                    ),
                    Expanded(
                      child: _GenderChip(
                        label: context.t.onboarding.female,
                        icon: AppIcons.editfemale,
                        isSelected: selectedGender.value == 'female',
                        onTap: () => selectedGender.value = 'female',
                      ),
                    ),
                    Expanded(
                      child: _GenderChip(
                        label: "",
                        icon: AppIcons.forbidden,
                        isSelected: selectedGender.value == 'other',
                        onTap: () => selectedGender.value = 'other',
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: AppSpacing.xl),

                // Skin Type Field
                Text(
                  context.t.editProfile.skinType,
                  style: AppTextStyles.latoBody(
                    13,
                    color: AppColors.profileTitle,
                    weight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: AppSpacing.md),
                _SelectableField(
                  value: selectedSkinType.value.toUpperCase(),
                  icon: AppIcons.editleaf,
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return SkintypeBottomsheet(
                          initialValue: selectedSkinType.value,
                          onSelected: (value) {
                            selectedSkinType.value = value;
                          },
                        );
                      },
                    );
                  },
                ),

                const SizedBox(height: AppSpacing.xl),

                // Focus Area Field
                Text(
                  context.t.editProfile.focusArea,
                  style: AppTextStyles.latoBody(
                    13,
                    color: AppColors.profileTitle,
                    weight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: AppSpacing.md),
                _SelectableField(
                  value: selectedFocusAreas.value.isNotEmpty
                      ? selectedFocusAreas.value.map((area) {
                          // Map backend values to display labels
                          final areaMap = {
                            'forehead': context.t.onboarding.forehead,
                            'eyes': context.t.onboarding.eyes,
                            'nose': context.t.onboarding.nose,
                            'cheeks': context.t.onboarding.cheeks,
                            'lips': context.t.onboarding.lips,
                            'jawline': context.t.onboarding.jawline,
                            'neck': context.t.onboarding.neck,
                          };
                          return areaMap[area] ?? area;
                        }).join(', ')
                      : null,
                  hintText: context.t.editProfile.focusAreaHint,
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return FocusareaBottomsheet(
                          initialValues: selectedFocusAreas.value,
                          onSelected: (values) {
                            selectedFocusAreas.value = values;
                          },
                        );
                      },
                    );
                  },
                ),

                const SizedBox(height: AppSpacing.xl),

                // Save Button

                // Save Button
                CustomButton(
                  label: isLoading.value
                      ? context.t.editProfile.saving
                      : context.t.editProfile.save,
                  fullWidth: true,
                  size: CustomButtonSize.large,
                  foregroundColor: AppColors.onboardingButtonGradientStart,
                  backgroundColor: AppColors.onboardingButtonGradientStart,
                  labelColor: Colors.white,
                  onPressed: isLoading.value
                      ? null
                      : () async {
                          if (formKey.currentState?.validate() ?? false) {
                            formKey.currentState?.save();
                            isLoading.value = true;

                            try {
                              final userNotifier =
                                  ref.read(AllProviders.userProvider.notifier);
                              bool success = true;

                              // 1. Upload Image if selected
                              if (selectedImage.value != null) {
                                final imageSuccess =
                                    await userNotifier.uploadProfileImage(
                                        selectedImage.value!.path);
                                if (!imageSuccess) success = false;
                              }

                              // 2. Update Profile Data
                              final data = {
                                'full_name': nameController.text,
                                'gender': selectedGender.value,
                                'skin_type': selectedSkinType.value,
                                'age': int.tryParse(ageController.text) ??
                                    profile?.age,
                                'weight': selectedWeight.value,
                                'height': selectedHeight.value,
                              };

                              final profileSuccess =
                                  await userNotifier.updateProfile(data);
                              if (!profileSuccess) success = false;

                              if (context.mounted) {
                                if (success) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text(context
                                            .t.editProfile.updateSuccess)),
                                  );
                                  Navigator.pop(context);
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text(
                                            context.t.editProfile.updateError)),
                                  );
                                }
                              }
                            } finally {
                              isLoading.value = false;
                            }
                          }
                        },
                ),

                const SizedBox(height: AppSpacing.md),

                // Delete Account Button
                Center(
                  child: CustomButton(
                    label: context.t.editProfile.deleteAccount,
                    size: CustomButtonSize.medium,
                    type: CustomButtonType.text,
                    labelColor: AppColors.editprofiledelete,
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierColor: AppColors.black.withValues(alpha: 0.3),
                        builder: (context) => BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: const DeleteDialog(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _GenderChip extends StatelessWidget {
  const _GenderChip({
    this.label,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  final String? label;
  final String icon;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.md,
        ),
        decoration: BoxDecoration(
          color: AppColors.profileTextFieldColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: isSelected
                ? AppColors.onboardingButtonGradientStart
                : AppColors.profileTextFieldColor,
            width: isSelected ? 1.5 : 1,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
            ),
            if (label != null) ...[
              const SizedBox(width: AppSpacing.md),
              Text(
                label!,
                style: AppTextStyles.latoBody(
                  14,
                  color: AppColors.profileTitle,
                  weight: isSelected ? FontWeight.w500 : FontWeight.normal,
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}

class _SelectableField extends StatelessWidget {
  const _SelectableField({
    this.value,
    this.hintText,
    this.icon,
    required this.onTap,
  });

  final String? value;
  final String? hintText;
  final String? icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final hasValue = value != null && value!.isNotEmpty;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.md + 4,
        ),
        decoration: BoxDecoration(
          color: AppColors.profileTextFieldColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            if (icon != null)
              Image.asset(
                icon!,
              ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Text(
                hasValue ? value! : (hintText ?? ''),
                style: AppTextStyles.latoBody(
                  14,
                  color: AppColors.profileTitle,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: AppColors.editprofileicon,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}
