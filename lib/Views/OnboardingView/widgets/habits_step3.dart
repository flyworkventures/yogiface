import 'package:flutter/material.dart';
import 'package:yogiface/Views/OnboardingView/widgets/checkbox_option.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class HabitsStep3 extends StatelessWidget {
  final ValueNotifier<bool?> hasBotox;
  final VoidCallback onBack;
  final VoidCallback onNext;

  const HabitsStep3({
    super.key,
    required this.hasBotox,
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
                context.t.onboarding.haveYouHadBotox,
                style: AppTextStyles.onboardingBody(
                  28,
                  height: 1.3,
                  weight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              )),
          const SizedBox(height: AppSpacing.sm),
          Align(
              alignment: Alignment.center,
              child: Text(
                context.t.onboarding.shortBioDescription,
                textAlign: TextAlign.center,
                style: AppTextStyles.onboardingBody(
                  18,
                  height: 1.3,
                  weight: FontWeight.w500,
                ),
              )),

          // Text(
          //   context.t.onboarding.shortBioDescription,
          //   style: AppTextStyles.body(14, color: AppColors.onboardingGreyText),
          // ),
          const SizedBox(height: AppSpacing.xxl),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.xl,
              vertical: 0,
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.xl),
              child: CheckboxOption(
                label: context.t.onboarding.yes,
                isSelected: hasBotox.value == true,
                onTap: () => hasBotox.value = true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.xl,
              vertical: 0,
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.xl),
              child: CheckboxOption(
                label: context.t.onboarding.no,
                isSelected: hasBotox.value == false,
                onTap: () => hasBotox.value = false,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
