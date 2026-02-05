import 'package:flutter/material.dart';
import 'package:yogiface/Views/CourseDetailView/course_detail_view.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

import '../../../theme/app_colors.dart';

class PopularCoursesWidget extends StatelessWidget {
  const PopularCoursesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Course> courses = [
      Course(
        title: context.t.home.courses.foreheadSmoother.title,
        imagePath: AppImages.focusarea2,
        thumbnailPath: AppImages.popularcourses1,
        benefits: [
          BenefitItem(
              title: context.t.home.benefits.naturalIroning.title,
              description: context.t.home.benefits.naturalIroning.description),
          BenefitItem(
              title: context.t.home.benefits.botoxEffect.title,
              description: context.t.home.benefits.botoxEffect.description),
          BenefitItem(
              title: context.t.home.benefits.stressRelief.title,
              description: context.t.home.benefits.stressRelief.description),
          BenefitItem(
              title: context.t.home.benefits.radiantAppearance.title,
              description:
                  context.t.home.benefits.radiantAppearance.description),
          BenefitItem(
              title: context.t.home.benefits.dePuffing.title,
              description: context.t.home.benefits.dePuffing.description)
        ],
        description: context.t.home.courses.foreheadSmoother.description,
      ),
      Course(
        title: context.t.home.courses.vMove.title,
        imagePath: AppImages.focusarea2,
        benefits: [
          BenefitItem(
              title: context.t.home.benefits.naturalIroning.title,
              description: context.t.home.benefits.naturalIroning.description),
          BenefitItem(
              title: context.t.home.benefits.botoxEffect.title,
              description: context.t.home.benefits.botoxEffect.description),
          BenefitItem(
              title: context.t.home.benefits.stressRelief.title,
              description: context.t.home.benefits.stressRelief.description),
          BenefitItem(
              title: context.t.home.benefits.radiantAppearance.title,
              description:
                  context.t.home.benefits.radiantAppearance.description),
          BenefitItem(
              title: context.t.home.benefits.dePuffing.title,
              description: context.t.home.benefits.dePuffing.description)
        ],
        thumbnailPath: AppImages.vmove,
        description: context.t.home.courses.vMove.description,
      ),
      Course(
        title: context.t.home.courses.cheekLifter.title,
        imagePath: AppImages.focusarea2,
        benefits: [
          BenefitItem(
              title: context.t.home.benefits.naturalIroning.title,
              description: context.t.home.benefits.naturalIroning.description),
          BenefitItem(
              title: context.t.home.benefits.botoxEffect.title,
              description: context.t.home.benefits.botoxEffect.description),
          BenefitItem(
              title: context.t.home.benefits.stressRelief.title,
              description: context.t.home.benefits.stressRelief.description),
          BenefitItem(
              title: context.t.home.benefits.radiantAppearance.title,
              description:
                  context.t.home.benefits.radiantAppearance.description),
          BenefitItem(
              title: context.t.home.benefits.dePuffing.title,
              description: context.t.home.benefits.dePuffing.description)
        ],
        thumbnailPath: AppImages.cheeflifter,
        description: context.t.home.courses.cheekLifter.description,
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
                context.t.home.popularCourses,
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
                      context.t.home.seeMore,
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
          ...courses.asMap().entries.map((entry) {
            final course = entry.value;
            final isLast = entry.key == courses.length - 1;

            return Column(
              children: [
                _CourseCard(
                  title: course.title,
                  description: course.description,
                  imagePath: course.thumbnailPath,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CourseDetailView(course: course),
                      ),
                    );
                  },
                ),
                if (!isLast) const SizedBox(height: 12),
              ],
            );
          }),
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
                    const SizedBox(height: 10),
                    Text(
                      description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.onboardingBody(
                        12,
                        letterSpacing: 0.2,
                        height: 1.3,
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
