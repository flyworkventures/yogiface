import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yogiface/Repositories/exercise_repository.dart';
import 'package:yogiface/Views/CourseDetailView/course_detail_view.dart';
import 'package:yogiface/Views/HomeView/widgets/featured_course_card.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

class FocusAreasWidget extends HookConsumerWidget {
  const FocusAreasWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedAreaKey = useState<String>('lip_area'); // Default to lip_area

    final startCoursesAsync = useFuture(useMemoized(
      () => ref.read(exerciseRepositoryProvider).getPopularExercisesByType(
            lang: LocaleSettings.currentLocale.languageCode,
          ),
    ));

    final List<Map<String, String>> areas = [
      {
        'name': context.t.onboarding.fullface,
        'image': AppImages.focusareafullface,
        'key': 'full_face'
      },
      {
        'name': context.t.onboarding.lips,
        'image': AppImages.focusarea1,
        'key': 'lip_area'
      },
      {
        'name': context.t.onboarding.eyes,
        'image': AppImages.focusareaeyes,
        'key': 'eye_area'
      },
      {
        'name': context.t.onboarding.nose,
        'image': AppImages.focusareanoise,
        'key': 'nose_area'
      },
      {
        'name': context.t.onboarding.cheeks,
        'image': AppImages.focusareacheek,
        'key': 'cheeks_mid_face'
      },
      {
        'name': context.t.onboarding.jawline,
        'image': AppImages.focusareajawline,
        'key': 'jawline_chin'
      },
      {
        'name': context.t.onboarding.forehead,
        'image': AppImages.focusareaforehead,
        'key': 'forehead_brow'
      },
      {
        'name': context.t.onboarding.neck,
        'image': AppImages.focusareaneck,
        'key': 'neck_decollete'
      },
    ];

    // Find the course for the selected area
    Course? selectedCourse;
    if (startCoursesAsync.hasData &&
        startCoursesAsync.data!.data.exercises != null) {
      try {
        // Try to find an exercise that exactly matches the selected type
        final exercise = startCoursesAsync.data!.data.exercises!.firstWhere(
          (e) => e.type.toLowerCase() == selectedAreaKey.value.toLowerCase(),
        );

        selectedCourse = Course(
            id: exercise.id,
            title: exercise.title ?? '',
            description: exercise.description ?? '',
            imagePath: exercise.imageCdnPath,
            thumbnailPath: exercise.imageCdnPath,
            benefits: exercise.benefits
                    ?.map((b) => BenefitItem(title: b, description: ''))
                    .toList() ??
                []);
      } catch (_) {
        // No exercise found for this type
        selectedCourse = null;
      }
    }

    // Fallback/Loading course placeholder if needed, or just specific UI state
    // But FeaturedCourseCard expects values.
    // If loading, we could show a spinner.

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
        SizedBox(
          height: 85,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: areas.length,
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              final area = areas[index];
              final isSelected = area['key'] == selectedAreaKey.value;
              return _FocusAreaCircle(
                name: area['name']!,
                imagePath: area['image']!,
                isSelected: isSelected,
                onTap: () {
                  selectedAreaKey.value = area['key']!;
                },
              );
            },
          ),
        ),

        const SizedBox(height: 20),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSpacing.xxl),
          child: startCoursesAsync.connectionState == ConnectionState.waiting
              ? const Center(child: CircularProgressIndicator())
              : selectedCourse != null
                  ? FeaturedCourseCard(
                      imagePath: selectedCourse.thumbnailPath,
                      title: selectedCourse.title,
                      description: selectedCourse.description,
                      thumbnailPath: selectedCourse.thumbnailPath,
                      isAsset: false, // Changed to false for network images
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                CourseDetailView(course: selectedCourse!),
                          ),
                        );
                      },
                    )
                  : const Center(
                      child: Text("No exercise found for this area")),
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
  final bool isSelected;

  const _FocusAreaCircle({
    required this.name,
    required this.imagePath,
    this.onTap,
    this.isSelected = false,
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
                color: isSelected
                    ? const Color(0xFFCB9EF6)
                    : const Color(0xFFE8E0F0),
                width: isSelected ? 3 : 2,
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
              weight: isSelected ? FontWeight.w800 : FontWeight.w700,
              color: isSelected ? const Color(0xFFCB9EF6) : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
