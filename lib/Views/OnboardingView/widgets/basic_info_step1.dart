import 'package:flutter/material.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/shared/custom_form_text_field.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

import 'gender_button.dart';
import 'horizontal_number_picker.dart';

class BasicInfoStep1 extends StatelessWidget {
  final ValueNotifier<String> fullName;
  final ValueNotifier<String?> selectedGender;
  final ValueNotifier<int> selectedAge;
  final VoidCallback onNext;

  const BasicInfoStep1({
    super.key,
    required this.fullName,
    required this.selectedGender,
    required this.selectedAge,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: AppPaddings.horizontalPage,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: AppSpacing.xxl),
            Text(
              context.t.onboarding.tellUsAboutYourself,
              style: AppTextStyles.onboardingBody(
                28,
                weight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            Text(
              context.t.onboarding.shortBioDescription,
              textAlign: TextAlign.center,
              style: AppTextStyles.onboardingBody(
                18,
                height: 1.3,
                weight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: AppSpacing.xl),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                context.t.onboarding.fullName,
                style:
                    AppTextStyles.onboardingBody(16, weight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: AppSpacing.sm),
            CustomFormTextField(
              hintText: context.t.onboarding.enterYourFullname,
              fillColor: AppColors.surfaceLight,
              hintStyle: AppTextStyles.onboardingBody(
                14,
                color: AppColors.onboardingHintGrey,
                weight: FontWeight.w300,
              ),
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.done,
              onChanged: (value) => fullName.value = value,
            ),
            const SizedBox(height: AppSpacing.xxxl),
            const SizedBox(height: AppSpacing.xl),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Gender',
                style:
                    AppTextStyles.onboardingBody(16, weight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            Row(
              children: [
                Expanded(
                  child: GenderButton(
                    label: context.t.onboarding.male,
                    iconPath: AppIcons.male,
                    isSelected: selectedGender.value == 'male',
                    onTap: () => selectedGender.value = 'male',
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: GenderButton(
                    label: context.t.onboarding.female,
                    iconPath: AppIcons.female,
                    isSelected: selectedGender.value == 'female',
                    onTap: () => selectedGender.value = 'female',
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: GenderButton(
                    label: context.t.onboarding.dontWantToMention,
                    iconPath: null,
                    isSelected: selectedGender.value == 'none',
                    onTap: () => selectedGender.value = 'none',
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.xxxl),
            const SizedBox(height: AppSpacing.xl),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Age',
                style:
                    AppTextStyles.onboardingBody(16, weight: FontWeight.w600),
              ),
            ),
            HorizontalNumberPicker(
              min: 18,
              max: 100,
              selected: selectedAge.value,
              onChanged: (value) => selectedAge.value = value,
            ),

            // Alt butonlar OnboardingView içinde sabit bar'a taşındı
            const SizedBox(height: AppSpacing.xxxl),
          ],
        ),
      ),
    );
  }
}
