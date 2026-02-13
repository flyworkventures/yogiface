import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:purchases_ui_flutter/purchases_ui_flutter.dart';
import 'package:yogiface/Models/exercise_model.dart';
import 'package:yogiface/Repositories/exercise_repository.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/Views/CourseDetailView/course_detail_view.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_text_styles.dart';

import '../../../theme/app_colors.dart';

class PopularCoursesWidget extends HookConsumerWidget {
  const PopularCoursesWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final popularExercisesAsync = useFuture(useMemoized(
      () => ref.read(exerciseRepositoryProvider).getPopularExercises(
            lang: LocaleSettings.currentLocale.languageCode,
          ),
    ));

    final isPremiumRevenueCat = ref.watch(AllProviders.premiumProvider);
    final userState = ref.watch(AllProviders.userProvider);
    final isPremiumUser = userState.currentUser?.user?.isPremium ?? false;
    final isPremium = isPremiumRevenueCat || isPremiumUser;
    void navigateToCourseDetail(BuildContext context, Exercise course) {
      // Parse benefits string/json if needed, or use dummy if benefits is just a string description
      // for now we construct Course object
      // Wait, CourseDetailView expects a Course object.
      // I need to see Course definition in course_detail_view.dart or define one here.
      // existing code: import 'package:yogiface/Views/CourseDetailView/course_detail_view.dart';

      // Attempting to map Exercise to Course.
      // Since I don't see Course definition, I stick to the one used in previous file content
      final courseDetail = Course(
        id: course.id,
        title: course.title ?? '',
        description: course.description ?? '',
        imagePath: course.imageCdnPath,
        thumbnailPath: course.imageCdnPath,
        benefits: [
          // Parse course.benefits from backend (now a List<String>)
          // Each string format: "Title: Description"
          if (course.benefits != null && course.benefits!.isNotEmpty)
            ...course.benefits!.map((benefit) {
              // Remove quotation marks and trim
              final cleanBenefit = benefit
                  .replaceAll('"', '')
                  .replaceAll('[', '')
                  .replaceAll(']', '')
                  .trim();

              // Split by colon to get title and description
              final parts = cleanBenefit.split(':');
              if (parts.length >= 2) {
                return BenefitItem(
                  title: parts[0].trim(),
                  description: parts.sublist(1).join(':').trim(),
                );
              } else {
                // If no colon, use the whole string as description
                return BenefitItem(
                  title: 'Benefit',
                  description: cleanBenefit,
                );
              }
            })
        ],
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CourseDetailView(course: courseDetail),
        ),
      );
    }

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
              final index = entry.key;
              final exercise = entry.value;
              final isLast = index ==
                  popularExercisesAsync.data!.data.exercises!.length - 1;

              final isLocked = !isPremium && index > 0;

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
                    isLocked: isLocked,
                    onTap: () async {
                      if (isLocked) {
                        try {
                          await RevenueCatUI.presentPaywall();
                        } catch (e) {
                          debugPrint('Error presenting paywall: $e');
                        }
                        return;
                      }
                      navigateToCourseDetail(context, exercise);
                    },
                  ),
                  if (!isLast) const SizedBox(height: 16),
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
  final bool isLocked;

  const _CourseCard({
    required this.title,
    required this.description,
    required this.imagePath,
    this.onTap,
    this.isNetworkImage = false,
    this.isLocked = false,
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
        child: Stack(
          children: [
            Row(
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
            if (isLocked)
              Positioned(
                top: 12,
                right: 12,
                child: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.lock,
                    // User said "replace favorite icon". Favorite icon was 0xFFCB9EF6.
                    color: Color(0xFFCB9EF6),
                    size: 20,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
