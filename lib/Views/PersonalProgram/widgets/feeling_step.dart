import 'package:flutter/material.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';
import 'package:yogiface/Views/PersonalProgram/widgets/personal_program_option.dart';

class FeelingStep extends StatelessWidget {
  final ValueNotifier<String> selectedFeeling;

  const FeelingStep({
    super.key,
    required this.selectedFeeling,
  });

  @override
  Widget build(BuildContext context) {
    final Map<String, Map<String, String>> feelingsMap = {
      'lightened': {
        'label': context.t.personalProgram.feelings.lightened,
        'icon': AppIcons.lightened,
      },
      'revitalized': {
        'label': context.t.personalProgram.feelings.revitalized,
        'icon': AppIcons.revitalized,
      },
      'refreshed': {
        'label': context.t.personalProgram.feelings.refreshed,
        'icon': AppIcons.refreshed,
      },
      'energetic': {
        'label': context.t.personalProgram.feelings.energetic,
        'icon': AppIcons.moreenergy,
      },
    };

    return SingleChildScrollView(
      padding: AppPaddings.horizontalPage,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 32),
          Text(
            context.t.personalProgram.feelingTitle,
            textAlign: TextAlign.center,
            style: AppTextStyles.onboardingBody(
              height: 1.2,
              24,
              weight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: AppSpacing.xxl),
          // Text(
          //   context.t.personalProgram.objectiveSubtitle,
          //   textAlign: TextAlign.center,
          //   style: AppTextStyles.onboardingBody(14,
          //       height: 1, weight: FontWeight.w400),
          // ),
          const SizedBox(height: AppSpacing.xl),
          ...feelingsMap.entries.map((entry) {
            final feelingKey = entry.key;
            final data = entry.value;

            return ValueListenableBuilder<String>(
              valueListenable: selectedFeeling,
              builder: (context, value, child) {
                return PersonalProgramOption(
                  label: data['label']!,
                  iconPath: data['icon']!,
                  isSelected: value == feelingKey,
                  onTap: () {
                    selectedFeeling.value = feelingKey;
                  },
                );
              },
            );
          }).toList(),
          const SizedBox(height: 100), // Extra space at bottom
        ],
      ),
    );
  }
}
