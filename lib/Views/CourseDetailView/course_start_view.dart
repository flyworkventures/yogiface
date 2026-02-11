import 'package:flutter/material.dart';
import 'package:yogiface/Core/Routes/app_routes.dart';
import 'package:yogiface/Views/CourseDetailView/widgets/course_instructions_card_widget.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/shared/custom_button.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class Instruction {
  final String number;
  final String title;
  final String description;

  Instruction({
    required this.number,
    required this.title,
    required this.description,
  });
}

class CourseStartView extends StatefulWidget {
  final int courseId;
  final String courseTitle;
  final List<Instruction> instructions;

  const CourseStartView({
    super.key,
    required this.courseId,
    required this.courseTitle,
    required this.instructions,
  });

  @override
  State<CourseStartView> createState() => _CourseStartViewState();
}

class _CourseStartViewState extends State<CourseStartView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFF2F5FC),
            Color(0xFFFFFFFF),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Header
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 12.0),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 24,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          widget.courseTitle,
                          style: AppTextStyles.onboardingBody(
                            20,
                            weight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 10),
                  child: CourseInstructionsCardWidget(
                    instructions: widget.instructions,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 10),
                  child: CustomButton(
                    label: context.t.courseDetail.getStarted,
                    fullWidth: true,
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.course,
                        arguments: widget.courseId,
                      );
                    },
                    backgroundColor: const Color(0xFFCB9EF6),
                    foregroundColor: Colors.white,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
