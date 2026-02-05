import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yogiface/Views/CourseDetailView/course_start_view.dart';
import 'package:yogiface/Views/CourseDetailView/widgets/course_detail_card_widget.dart';
import 'package:yogiface/Views/MainView/widgets/bottomnavbar.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/shared/custom_button.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class Course {
  final String title;
  final String description;
  final String imagePath;
  final String thumbnailPath;
  final List<BenefitItem> benefits;

  Course({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.thumbnailPath,
    required this.benefits,
  });
}

class BenefitItem {
  final String title;
  final String description;

  BenefitItem({
    required this.title,
    required this.description,
  });
}

class CourseDetailView extends HookWidget {
  final Course course;

  const CourseDetailView({
    super.key,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F5FC),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
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
                      context.t.courseDetail.title,
                      style: AppTextStyles.onboardingBody(
                        20,
                        weight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // İçerik
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 16),
                      CourseDetailCardWidget(course: course),
                      const SizedBox(height: 32),
                      CustomButton(
                        label: context.t.courseDetail.getStarted,
                        fullWidth: true,
                        onPressed: () {
                          // Talimat sayfasına git
                          final instructions = [
                            Instruction(
                              number: '01',
                              title: context.t.courseDetail.instructions
                                  .instruction1.title,
                              description: context.t.courseDetail.instructions
                                  .instruction1.description,
                            ),
                            Instruction(
                              number: '02',
                              title: context.t.courseDetail.instructions
                                  .instruction2.title,
                              description: context.t.courseDetail.instructions
                                  .instruction2.description,
                            ),
                          ];
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CourseStartView(
                                courseTitle: course.title,
                                instructions: instructions,
                              ),
                            ),
                          );
                        },
                        gradientColors: [
                          AppColors.onboardingButtonGradientEnd,
                          AppColors.onboardingButtonGradientStart,
                        ],
                        backgroundColor: const Color(0xFFCB9EF6),
                        foregroundColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(
          currentIndex: 0,
          onTap: (index) {
            if (index == 0) {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/main',
                (route) => false,
                arguments: {'initialIndex': 0},
              );
            }
            if (index == 1) {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/main',
                (route) => false,
                arguments: {'initialIndex': 1},
              );
            }
            if (index == 2) {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/main',
                (route) => false,
                arguments: {'initialIndex': 2},
              );
            }
          }),
    );
  }
}
