import 'package:flutter/material.dart';
import 'package:yogiface/Views/CourseDetailView/course_detail_view.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

class CourseDetailCardWidget extends StatelessWidget {
  final Course course;

  const CourseDetailCardWidget({
    super.key,
    required this.course,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Course Image
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: Image.asset(
                  course.imagePath,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: const Color(0xFFF5F5F5),
                      child: const Icon(
                        Icons.image_not_supported,
                        color: Color(0xFFBDBDBD),
                      ),
                    );
                  },
                ),
              ),
            ),

            // Content
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    course.title,
                    style: AppTextStyles.onboardingBody(
                      18,
                      weight: FontWeight.w700,
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Description
                  Text(
                    course.description,
                    style: AppTextStyles.onboardingBody(
                      14,
                      weight: FontWeight.w400,
                      color: const Color(0xFF666666),
                    ),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),

                  const SizedBox(height: 20),

                  // Benefits Section
                  Text(
                    'Benefits',
                    style: AppTextStyles.onboardingBody(
                      16,
                      weight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Benefits List
                  Column(
                    children: course.benefits
                        .map(
                          (benefit) => Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: _BenefitItem(benefit: benefit),
                          ),
                        )
                        .toList(),
                  ),

                  const SizedBox(height: 20),

                  // Duration
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.onboardingButtonGradientEnd,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppIcons.clock,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '5 min.',
                            style: AppTextStyles.onboardingBody(
                              14,
                              weight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Get Started Button
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BenefitItem extends StatelessWidget {
  final BenefitItem benefit;

  const _BenefitItem({
    required this.benefit,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Icon
        Image.asset(
          AppIcons.tick,
        ),

        const SizedBox(width: 12),

        // Text
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: benefit.title,
                      style: AppTextStyles.onboardingBody(
                        14,
                        weight: FontWeight.w600,
                      ),
                    ),
                    const TextSpan(
                        text: ':', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: benefit.description,
                      style: AppTextStyles.onboardingBody(
                        14,
                        weight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 4),
            ],
          ),
        ),
      ],
    );
  }
}
