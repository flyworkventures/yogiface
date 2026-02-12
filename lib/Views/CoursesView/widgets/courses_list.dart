import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purchases_ui_flutter/purchases_ui_flutter.dart'; // Add import
import 'package:yogiface/Models/exercise_model.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/Views/CourseDetailView/course_detail_view.dart';
import 'package:yogiface/Views/HomeView/widgets/featured_course_card.dart';
import 'package:yogiface/Views/HomeView/widgets/premium_plan_widget.dart';
import 'package:yogiface/gen/strings.g.dart';

class CoursesList extends ConsumerWidget {
  final List<Exercise> courses;
  final Set<int> favoriteCourses;
  final ValueChanged<int> onFavoriteToggle;

  const CoursesList({
    super.key,
    required this.courses,
    required this.favoriteCourses,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (courses.isEmpty) {
      return Center(child: Text(context.t.courseDetail.noExercisesFound));
    }

    final isPremiumRevenueCat = ref.watch(AllProviders.premiumProvider);
    final userState = ref.watch(AllProviders.userProvider);
    final isPremiumUser = userState.value?.user?.isPremium ?? false;
    final isPremium = isPremiumRevenueCat || isPremiumUser;

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: courses.length,
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        final course = courses[index];
        final isFavorite =
            favoriteCourses.contains(course.id) || course.isFavorited;

        // Lock if not premium and not the first item
        final isLocked = !isPremium && index > 0;

        return Stack(
          children: [
            FeaturedCourseCard(
              imagePath: course.imageCdnPath,
              title: course.title ?? '',
              description: course.description ?? '',
              thumbnailPath: course.imageCdnPath,
              showFavoriteButton: true,
              isFavorite: isFavorite,
              onFavoriteTap: () => onFavoriteToggle(course.id),
              onTap: () async {
                if (isLocked) {
                  try {
                    await RevenueCatUI.presentPaywall();
                  } catch (e) {
                    debugPrint('Error presenting paywall: $e');
                  }
                } else {
                  _navigateToCourseDetail(context, course);
                }
              },
            ),
            if (isLocked)
              Positioned.fill(
                child: IgnorePointer(
                  ignoring:
                      true, // Allow clicks to pass through to the Card's onTap which handles the redirect?
                  // Wait, FeaturedCourseCard has onTap. If I put a Container on top, it might block touches.
                  // If I use IgnorePointer, touches go to the Card.
                  // But I want to intercept touches?
                  // Actually, FeaturedCourseCard's onTap is what checks isLocked. So I just need visual overlay here.
                  // So IgnorePointer is correct so that the ripple effect might still show on the card, or I can just let it be.
                  // Better: Make the overlay absorb clicks if I didn't handle it in Card's onTap.
                  // But since I handled it in Card's onTap, I can just let clicks pass through or have the overlay be transparent to hits.
                  // Let's use IgnorePointer so the card receives the tap and executes the logic.
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(
                          30), // Matching FeaturedCourseCard radius
                    ),
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.lock,
                      color: Colors.white,
                      size: 48,
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  void _navigateToCourseDetail(BuildContext context, Exercise course) {
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
}
