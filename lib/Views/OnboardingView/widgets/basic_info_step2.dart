import 'package:flutter/material.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';

import 'horizontal_number_picker.dart';
import 'vertical_number_picker.dart';

class BasicInfoStep2 extends StatelessWidget {
  final ValueNotifier<int> selectedWeight;
  final ValueNotifier<int> selectedHeight;
  final VoidCallback onBack;
  final VoidCallback onNext;

  const BasicInfoStep2({
    super.key,
    required this.selectedWeight,
    required this.selectedHeight,
    required this.onBack,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.horizontalPage,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: AppSpacing.xl),
          Align(
            alignment: Alignment.center,
            child: Text(
              textAlign: TextAlign.center,
              context.t.onboarding.tellUsAboutYourself,
              style: AppTextStyles.onboardingBody(
                28,
                weight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.xl * 2),
          Text(
            context.t.onboarding.weight,
            style: AppTextStyles.onboardingBody(16, weight: FontWeight.w600),
          ),
          HorizontalNumberPicker(
            min: 40,
            max: 200,
            selected: selectedWeight.value,
            onChanged: (value) => selectedWeight.value = value,
          ),
          const SizedBox(height: AppSpacing.xl * 2),
          Text(
            context.t.onboarding.height,
            style: AppTextStyles.onboardingBody(16, weight: FontWeight.w600),
          ),
          VerticalNumericSelector(
            minValue: 140,
            maxValue: 210,
            step: 1,
            initialValue: selectedHeight.value,
            showSelectedValue: false,
            onValueChanged: (value) => selectedHeight.value = value,
            viewPort: 0.2,
          ),
        ],
      ),
    );
  }
}
