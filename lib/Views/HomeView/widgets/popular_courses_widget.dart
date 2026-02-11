import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yogiface/Repositories/exercise_repository.dart';
import 'package:yogiface/Views/CourseDetailView/course_detail_view.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_text_styles.dart';

import '../../../theme/app_colors.dart';

// Provider definition is usually in the repository file or a global providers file.
// Assuming it's defined in exercise_repository.dart based on previous context.
// If it's not exported, we might need to check where it is.
// For now, I'll rely on the import. If the provider is not a top-level variable there, I'll check.
// Checking the previous file view of exercise_repository.dart shows:
// final dioServiceProvider = Provider<DioService>((ref) { ... });
// But it DOES NOT show exerciseRepositoryProvider.
// I need to define it or find where it is.
// Actually, looking at the previous view_file of exercise_repository.dart, I don't see exerciseRepositoryProvider defined.
// I should define it there.

class PopularCoursesWidget extends HookConsumerWidget {
  const PopularCoursesWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final popularExercisesAsync = useFuture(useMemoized(
      () => ref.read(exerciseRepositoryProvider).getPopularExercises(
            lang: LocaleSettings.currentLocale.languageCode,
          ),
    ));

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
          if (popularExercisesAsync.connectionState == ConnectionState.waiting)
            const Center(child: CircularProgressIndicator())
          else if (popularExercisesAsync.hasError)
            Text('Error: ${popularExercisesAsync.error}')
          else if (popularExercisesAsync.hasData &&
              popularExercisesAsync.data?.data.exercises != null)
            ...popularExercisesAsync.data!.data.exercises!
                .asMap()
                .entries
                .map((entry) {
              final exercise = entry.value;
              final isLast = entry.key ==
                  popularExercisesAsync.data!.data.exercises!.length - 1;

              // Map Exercise to Course
              final course = Course(
                id: exercise.id,
                title: exercise.title ?? '',
                description: exercise.description ?? '',
                imagePath: exercise.imageCdnPath,
                thumbnailPath:
                    exercise.imageCdnPath, // Using same image for now
                benefits: exercise.benefits
                        ?.map((b) => BenefitItem(title: b, description: ''))
                        .toList() ??
                    [],
              );

              return Column(
                children: [
                  _CourseCard(
                    title: course.title,
                    description: course.description,
                    imagePath: course.thumbnailPath,
                    isNetworkImage: true,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CourseDetailView(course: course),
                        ),
                      );
                    },
                  ),
                  if (!isLast) const SizedBox(height: 12),
                ],
              );
            })
          else
            const Text('No popular courses found'),
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
  final bool isNetworkImage;

  const _CourseCard({
    required this.title,
    required this.description,
    required this.imagePath,
    this.onTap,
    this.isNetworkImage = false,
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
                child: SizedBox(
                  width: 100, // Fixed width for image consistency
                  height: 100, // Fixed height for image consistency
                  child: isNetworkImage
                      ? Image.network(
                          imagePath,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              const Icon(Icons.error),
                        )
                      : Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                        ),
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
