import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yogiface/Views/EditProfileView/widget/delete_dialog.dart';
import 'package:yogiface/Views/EditProfileView/widget/focusarea_bottomsheet.dart';
import 'package:yogiface/Views/EditProfileView/widget/skintype_bottomsheet.dart';
import 'package:yogiface/shared/custom_button.dart';
import 'package:yogiface/shared/custom_form_text_field.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

class EditProfileView extends HookWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final nameController = useTextEditingController(text: 'Melissa Yılmaz');
    final emailController =
        useTextEditingController(text: 'melissa.yilmaz@gmail.com');
    final ageController = useTextEditingController(text: '28');

    final selectedGender = useState<String>('Female');
    final selectedSkinType = useState<String>('Normal');
    final selectedFocusAreas = useState<List<String>>(
      ['Forehead', 'Eyes', 'Nose', 'Mouth', 'Cheeks'],
    );

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
          'Profil Düzenle',
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
                                child: Image.asset(AppImages.profilephoto,
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
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
                        ],
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      TextButton(
                        onPressed: () {
                          // TODO: Implement photo change
                        },
                        child: Text(
                          'Fotoğrafı Değiştir',
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
                  'Full Name',
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
                  'E-mail',
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
                  'Age',
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
                  'Gender',
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
                        label: 'Male',
                        icon: AppIcons.editmale,
                        isSelected: selectedGender.value == 'Male',
                        onTap: () => selectedGender.value = 'Male',
                      ),
                    ),
                    Expanded(
                      child: _GenderChip(
                        label: 'Female',
                        icon: AppIcons.editfemale,
                        isSelected: selectedGender.value == 'Female',
                        onTap: () => selectedGender.value = 'Female',
                      ),
                    ),
                    Expanded(
                      child: _GenderChip(
                        label: '',
                        icon: AppIcons.forbidden,
                        isSelected: selectedGender.value == 'Other',
                        onTap: () => selectedGender.value = 'Other',
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: AppSpacing.xl),

                // Skin Type Field
                Text(
                  'Skin Type',
                  style: AppTextStyles.latoBody(
                    13,
                    color: AppColors.profileTitle,
                    weight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: AppSpacing.md),
                _SelectableField(
                  value: selectedSkinType.value,
                  icon: AppIcons.editleaf,
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return const SkintypeBottomsheet();
                      },
                    );
                  },
                ),

                const SizedBox(height: AppSpacing.xl),

                // Focus Area Field
                Text(
                  'Focus Area',
                  style: AppTextStyles.latoBody(
                    13,
                    color: AppColors.profileTitle,
                    weight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: AppSpacing.md),
                _SelectableField(
                  value: selectedFocusAreas.value.join(', '),
                  hintText: 'Forehead, Eyes, Nose, Mouth, Cheeks...',
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return const FocusareaBottomsheet();
                      },
                    );
                  },
                ),

                const SizedBox(height: AppSpacing.xl),

                // Save Button
                CustomButton(
                  label: 'Kaydet',
                  fullWidth: true,
                  size: CustomButtonSize.large,
                  foregroundColor: AppColors.onboardingButtonGradientStart,
                  backgroundColor: AppColors.onboardingButtonGradientStart,
                  labelColor: Colors.white,
                  onPressed: () {
                    if (formKey.currentState?.validate() ?? false) {
                      formKey.currentState?.save();
                      // TODO: Save profile
                    }
                  },
                ),

                const SizedBox(height: AppSpacing.md),

                // Delete Account Button
                Center(
                  child: CustomButton(
                    label: 'Hesabı Sil',
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
