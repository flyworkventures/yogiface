import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yogiface/Views/OnboardingView/widgets/chip_button.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/shared/custom_button.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/utils/app_assets.dart';

class FocusareaBottomsheet extends HookWidget {
  const FocusareaBottomsheet({super.key});

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
    final selectedArea = useState<String?>(null);
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(AppImages.female),
                const SizedBox(height: AppSpacing.lg),
                for (int rowIndex = 0;
                    rowIndex < (areas.length / 3).ceil();
                    rowIndex++)
                  Padding(
                    padding: const EdgeInsets.only(bottom: AppSpacing.md),
                    child: Builder(
                      builder: (context) {
                        final startIndex = rowIndex * 3;
                        final endIndex =
                            (startIndex + 3).clamp(0, areas.length);
                        final rowItems = areas.sublist(startIndex, endIndex);
                        final isLastRow =
                            rowIndex == (areas.length / 3).ceil() - 1;
                        final hasIncompleteRow = areas.length % 3 != 0;

                        return Row(
                          mainAxisAlignment: (isLastRow && hasIncompleteRow)
                              ? MainAxisAlignment.center
                              : MainAxisAlignment.spaceEvenly,
                          children: rowItems.map((area) {
                            final isSelected = selectedArea.value == area;
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                              child: ChipButton(
                                label: area,
                                isSelected: isSelected,
                                onTap: () => selectedArea.value = area,
                              ),
                            );
                          }).toList(),
                        );
                      },
                    ),
                  ),
                const SizedBox(height: AppSpacing.xl),
                CustomButton(
                  label: 'Kaydet',
                  fullWidth: true,
                  size: CustomButtonSize.large,
                  foregroundColor: AppColors.onboardingButtonGradientStart,
                  backgroundColor: AppColors.onboardingButtonGradientStart,
                  labelColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
