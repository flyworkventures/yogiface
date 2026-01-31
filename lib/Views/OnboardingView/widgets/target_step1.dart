import 'package:flutter/material.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';
import 'package:yogiface/utils/print.dart';

import 'chip_button.dart';

class TargetStep1 extends StatelessWidget {
  final ValueNotifier<String?> selectedArea;
  final VoidCallback onBack;
  final VoidCallback onNext;

  const TargetStep1({
    super.key,
    required this.selectedArea,
    required this.onBack,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    final areas = [
      context.t.onboarding.forehead,
      context.t.onboarding.eyes,
      context.t.onboarding.nose,
      context.t.onboarding.cheeks,
      context.t.onboarding.lips,
      context.t.onboarding.jawline,
      context.t.onboarding.neck,
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: AppPaddings.horizontalPage,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: AppSpacing.xl),
            Align(
              alignment: Alignment.center,
              child: Text(
                context.t.onboarding.whichAreaToImprove,
                style: AppTextStyles.onboardingBody(
                  24,
                  height: 1.3,
                  weight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: AppSpacing.xl),
            Stack(
              children: [
                Image.asset(AppImages.yuz),
                Positioned.fill(
                  right: 28,
                  bottom: 28,
                  child: ValueListenableBuilder(
                    valueListenable: selectedArea,
                    builder: (context, value, child) {
                      Print.info('Selected area image: $value');
                      if (value == context.t.onboarding.forehead) {
                        return Image.asset(AppImages.alin);
                      } else if (value == context.t.onboarding.eyes) {
                        return Image.asset(AppImages.goz);
                      } else if (value == context.t.onboarding.cheeks) {
                        return Image.asset(AppImages.yanak);
                      } else if (value == context.t.onboarding.lips) {
                        return Image.asset(AppImages.dudak);
                      } else if (value == context.t.onboarding.nose) {
                        return Image.asset(AppImages.burun);
                      } else if (value == context.t.onboarding.jawline) {
                        return Image.asset(AppImages.cene);
                      } else if (value == context.t.onboarding.neck) {
                        return Image.asset(AppImages.boyun);
                      } else {
                        return Image.asset(AppImages.alin);
                      }
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.lg),
            Wrap(
              spacing: AppSpacing.sm,
              runSpacing: AppSpacing.md,
              alignment: WrapAlignment.center,
              children: areas.map((area) {
                final isSelected = selectedArea.value == area;
                return SizedBox(
                  width: (MediaQuery.of(context).size.width -
                          AppPaddings.horizontalPage.horizontal -
                          AppSpacing.sm * 2) /
                      3,
                  child: ChipButton(
                    label: area,
                    isSelected: isSelected,
                    onTap: () => selectedArea.value = area,
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
