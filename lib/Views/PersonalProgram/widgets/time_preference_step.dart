import 'package:flutter/material.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';
import 'package:yogiface/Views/PersonalProgram/widgets/personal_program_option.dart';

class TimePreferenceStep extends StatelessWidget {
  final ValueNotifier<String> selectedTime;

  const TimePreferenceStep({
    super.key,
    required this.selectedTime,
  });

  @override
  Widget build(BuildContext context) {
    final Map<String, Map<String, String>> timesMap = {
      'morning': {
        'label': context.t.personalProgram.times.morning,
        'icon': AppIcons.morning,
      },
      'duringDay': {
        'label': context.t.personalProgram.times.duringDay,
        'icon': AppIcons.sunny,
      },
      'evening': {
        'label': context.t.personalProgram.times.evening,
        'icon': AppIcons.moonpng,
      },
      'anytime': {
        'label': context.t.personalProgram.times.anytime,
        'icon': AppIcons.reminderclock,
      },
    };

    return SingleChildScrollView(
      padding: AppPaddings.horizontalPage,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 32),
          Text(
            context.t.personalProgram.timeTitle,
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
          ...timesMap.entries.map((entry) {
            final timeKey = entry.key;
            final data = entry.value;

            return ValueListenableBuilder<String>(
              valueListenable: selectedTime,
              builder: (context, value, child) {
                return PersonalProgramOption(
                  label: data['label']!,
                  iconPath: data['icon']!,
                  isSelected: value == timeKey,
                  onTap: () {
                    selectedTime.value = timeKey;
                  },
                );
              },
            );
          }).toList(),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
