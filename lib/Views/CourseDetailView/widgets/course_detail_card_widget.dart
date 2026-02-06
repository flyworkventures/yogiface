import 'package:flutter/material.dart';
import 'package:yogiface/Views/CourseDetailView/course_detail_view.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/shared/custom_cached_network_image.dart';
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
                child: CustomCachedNetworkImage(
                  imageUrl: course.imagePath,
                  backgroundImage: AppImages.background,
                  height: 220,
                  fit: BoxFit.cover,
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
                      height: 1.3,
                      weight: FontWeight.w400,
                    ),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),

                  const SizedBox(height: 20),

                  // Benefits Section
                  Text(
                    context.t.benefits,
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
                            '5 ${context.t.minutes}',
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
                        height: 1.3,
                      ),
                    ),
                    const TextSpan(
                        text: ':', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: benefit.description,
                      style: AppTextStyles.onboardingBody(
                        14,
                        weight: FontWeight.w400,
                        height: 1.3,
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
