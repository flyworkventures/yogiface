import 'package:flutter/material.dart';
import 'package:yogiface/Views/CourseDetailView/course_start_view.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class CourseInstructionsCardWidget extends StatelessWidget {
  final List<Instruction> instructions;

  const CourseInstructionsCardWidget({
    super.key,
    required this.instructions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.boxShadowColor,
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Title
              Text(
                context.t.beforeBegin,
                style: AppTextStyles.onboardingBody(
                  20,
                  weight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 32),

              // Instructions List
              Column(
                spacing: 30,
                children: instructions
                    .asMap()
                    .entries
                    .map(
                      (entry) => Padding(
                        padding: EdgeInsets.only(
                          bottom: entry.key == instructions.length - 1 ? 0 : 24,
                        ),
                        child: _InstructionItemWidget(
                          instruction: entry.value,
                        ),
                      ),
                    )
                    .toList(),
              ),

              // Get Started Button
            ],
          ),
        ),
      ),
    );
  }
}

class _InstructionItemWidget extends StatelessWidget {
  final Instruction instruction;

  const _InstructionItemWidget({
    required this.instruction,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Number
        Text(
          instruction.number,
          style: AppTextStyles.onboardingBody(
            48,
            weight: FontWeight.w700,
            color: const Color(0xFFCB9EF6),
          ),
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: 30),

        // Title
        Text(
          instruction.title,
          style: AppTextStyles.onboardingBody(
            20,
            weight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: 10),

        // Description
        Text(
          instruction.description,
          style: AppTextStyles.onboardingBody(14,
              weight: FontWeight.w400, height: 1.2),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
