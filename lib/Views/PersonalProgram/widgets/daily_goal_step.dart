import 'package:flutter/material.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

class DailyGoalStep extends StatefulWidget {
  final Function(String) onGoalSelected;
  final String? selectedGoal;

  const DailyGoalStep({
    super.key,
    required this.onGoalSelected,
    this.selectedGoal,
  });

  @override
  State<DailyGoalStep> createState() => _DailyGoalStepState();
}

class _DailyGoalStepState extends State<DailyGoalStep> {
  final List<Map<String, String>> goals = [
    {'id': '10', 'title': '10 Min', 'icon': AppIcons.coffee},
    {'id': '20', 'title': '20 Min', 'icon': AppIcons.timefast},
    {'id': '30', 'title': '30 Min', 'icon': AppIcons.mountains},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.horizontalPage,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              Text(
                'Set Your Daily Goal',
                style: AppTextStyles.onboardingBody(
                  24,
                  weight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Choose a pace that fits your schedule',
                style: AppTextStyles.onboardingBody(16, height: 1.5),
              ),
              const SizedBox(height: 32),
              ...goals.map((goal) {
                final isSelected = widget.selectedGoal == goal['id'];

                return GestureDetector(
                  onTap: () {
                    widget.onGoalSelected(goal['id']!);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: isSelected
                            ? AppColors.onboardingButtonGradientEnd
                            : const Color(0xFFE0D4F7),
                        width: 2,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              goal['icon']!,
                            ),
                            const SizedBox(width: 12),
                            Text(
                              goal['title']!,
                              style: AppTextStyles.body(
                                14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: isSelected
                                  ? AppColors.onboardingButtonGradientEnd
                                  : const Color(0xFFE0D4F7),
                              width: 2,
                            ),
                          ),
                          child: isSelected
                              ? Center(
                                  child: Container(
                                    width: 12,
                                    height: 12,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors
                                          .onboardingButtonGradientStart,
                                    ),
                                  ),
                                )
                              : null,
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ],
          ),
          const Spacer(flex: 3), // Altta daha fazla boşluk
        ],
      ),
    );
  }
} // Bu kapanış parantezi eksikti!
