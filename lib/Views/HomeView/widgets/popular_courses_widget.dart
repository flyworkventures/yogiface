import 'package:flutter/material.dart';
import 'package:yogiface/Views/CourseDetailView/course_detail_view.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

import '../../../theme/app_colors.dart';

class PopularCoursesWidget extends StatelessWidget {
  const PopularCoursesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Course> courses = [
      Course(
        title: 'The Forehead Smoother',
        imagePath: AppImages.focusarea2,
        thumbnailPath: AppImages.popularcourses1,
        benefits: [
          BenefitItem(
              title: "Natural Ironing:",
              description:
                  "Opens horizontal lines on the forehead and prevents them from deepening."),
          BenefitItem(
              title: "Botox Effect",
              description:
                  "Relaxes tense muscles and breaks the habit of frowning."),
          BenefitItem(
              title: "Stress Relief",
              description:
                  "Relieves stress accumulated on the forehead and alleviates headaches."),
          BenefitItem(
              title: "Radiant Appearance",
              description: "Boosts blood circulation to give the skin a glow."),
          BenefitItem(
              title: "De-Puffing",
              description:
                  "Reduces facial puffiness through its lymphatic drainage effect.")
        ],
        description:
            'This move releases tension in the forehead muscles and frown lines accumulated...',
      ),
      Course(
        title: 'The "V" Move',
        imagePath: AppImages.focusarea2,
        benefits: [
          BenefitItem(
              title: "Natural Ironing:",
              description:
                  "Opens horizontal lines on the forehead and prevents them from deepening."),
          BenefitItem(
              title: "Botox Effect",
              description:
                  "Relaxes tense muscles and breaks the habit of frowning."),
          BenefitItem(
              title: "Stress Relief",
              description:
                  "Relieves stress accumulated on the forehead and alleviates headaches."),
          BenefitItem(
              title: "Radiant Appearance",
              description: "Boosts blood circulation to give the skin a glow."),
          BenefitItem(
              title: "De-Puffing",
              description:
                  "Reduces facial puffiness through its lymphatic drainage effect.")
        ],
        thumbnailPath: AppImages.vmove,
        description:
            'Strengthens the delicate skin around the eyes, lifts drooping eyelids, and erases signs of fatigue.',
      ),
      Course(
        title: 'The Cheek Lifter',
        imagePath: AppImages.focusarea2,
        benefits: [
          BenefitItem(
              title: "Natural Ironing:",
              description:
                  "Opens horizontal lines on the forehead and prevents them from deepening."),
          BenefitItem(
              title: "Botox Effect",
              description:
                  "Relaxes tense muscles and breaks the habit of frowning."),
          BenefitItem(
              title: "Stress Relief",
              description:
                  "Relieves stress accumulated on the forehead and alleviates headaches."),
          BenefitItem(
              title: "Radiant Appearance",
              description: "Boosts blood circulation to give the skin a glow."),
          BenefitItem(
              title: "De-Puffing",
              description:
                  "Reduces facial puffiness through its lymphatic drainage effect.")
        ],
        thumbnailPath: AppImages.cheeflifter,
        description:
            'Lifts the cheek muscles (Zygomaticus) which are most prone to gravity, restoring the facial oval.',
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Başlık ve See More
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Courses',
                style: AppTextStyles.onboardingBody(
                  16,
                  weight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/main',
                    (route) => false,
                    arguments: {'initialIndex': 0},
                  );
                },
                child: Row(
                  children: [
                    Text(
                      'See More',
                      style: AppTextStyles.onboardingBody(
                        16,
                        weight: FontWeight.w600,
                        color: AppColors.onboardingButtonGradientEnd,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Icon(
                      Icons.arrow_forward,
                      size: 14,
                      color: AppColors.onboardingButtonGradientEnd,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Kurs Listesi
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: courses.length,
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final course = courses[index];
              return _CourseCard(
                title: course.title,
                description: course.description,
                imagePath: course.thumbnailPath,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              CourseDetailView(course: course)));
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class _CourseCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final VoidCallback? onTap;

  const _CourseCard({
    required this.title,
    required this.description,
    required this.imagePath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: AppColors.boxShadowColor.withValues(alpha: 0.5),
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagePath,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.onboardingBody(
                        14,
                        weight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.onboardingBody(
                        12,
                        letterSpacing: 0.2,
                        height: 1.2,
                        weight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
