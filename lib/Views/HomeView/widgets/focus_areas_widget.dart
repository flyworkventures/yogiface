import 'package:flutter/material.dart';
import 'package:yogiface/Views/CourseDetailView/course_detail_view.dart';
import 'package:yogiface/Views/HomeView/widgets/featured_course_card.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

class FocusAreasWidget extends StatelessWidget {
  const FocusAreasWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> areas = [
      {'name': context.t.onboarding.lips, 'image': AppImages.focusarea1},
      {'name': context.t.onboarding.eyes, 'image': AppImages.focusareaeyes},
      {'name': context.t.onboarding.nose, 'image': AppImages.focusareanoise},
      {'name': context.t.onboarding.cheeks, 'image': AppImages.focusareacheek},
      {
        'name': context.t.onboarding.jawline,
        'image': AppImages.focusareajawline
      },
      {
        'name': context.t.onboarding.forehead,
        'image': AppImages.focusareaforehead
      },
      {'name': context.t.onboarding.neck, 'image': AppImages.focusareaneck},
      {
        'name': context.t.onboarding.fullface,
        'image': AppImages.focusareafullface
      },
    ];
    final course = Course(
      title: context.t.home.courses.vMove.title,
      description: context.t.home.courses.vMove.description,
      imagePath: AppImages.focusarea2,
      thumbnailPath: AppImages.popularcourses1,
      benefits: [BenefitItem(title: "title", description: "description")],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Başlık
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSpacing.xxl),
          child: Text(
            context.t.home.focusAreas,
            style: AppTextStyles.onboardingBody(
              18,
              weight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(height: 16),

        // Yuvarlak Fotoğraflar - Yatay Liste
        Padding(
          padding: EdgeInsets.only(left: AppSpacing.xxl),
          child: SizedBox(
            height: 85,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: areas.length,
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemBuilder: (context, index) {
                final area = areas[index];
                return _FocusAreaCircle(
                  name: area['name']!,
                  imagePath: area['image']!,
                  onTap: () {
                    // Alan seçildiğinde
                  },
                );
              },
            ),
          ),
        ),

        const SizedBox(height: 20),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSpacing.xxl),
          child: FeaturedCourseCard(
            imagePath: AppImages.focusarea2,
            title: course.title,
            description: course.description,
            thumbnailPath: course.thumbnailPath,
            isAsset: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseDetailView(course: course),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

// Yuvarlak Focus Area Elemanı
class _FocusAreaCircle extends StatelessWidget {
  final String name;
  final String imagePath;
  final VoidCallback? onTap;

  const _FocusAreaCircle({
    required this.name,
    required this.imagePath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFFE8E0F0),
                width: 2,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: ClipOval(
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: AppTextStyles.onboardingBody(
              14,
              weight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
