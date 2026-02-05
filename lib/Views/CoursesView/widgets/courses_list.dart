import 'package:flutter/material.dart';
import 'package:yogiface/Models/exercise_model.dart';
import 'package:yogiface/Views/CourseDetailView/course_detail_view.dart';
import 'package:yogiface/Views/HomeView/widgets/featured_course_card.dart';
import 'package:yogiface/gen/strings.g.dart';

class CoursesList extends StatelessWidget {
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
  Widget build(BuildContext context) {
    if (courses.isEmpty) {
      return Center(child: Text(context.t.courseDetail.noExercisesFound));
    }
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: courses.length,
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        final course = courses[index];
        final isFavorite =
            favoriteCourses.contains(course.id) || course.isFavorited;
        return FeaturedCourseCard(
          imagePath: course.imageCdnPath,
          title: course.title ?? '',
          description: course.description ?? '',
          thumbnailPath: course.imageCdnPath,
          showFavoriteButton: true,
          isFavorite: isFavorite,
          onFavoriteTap: () => onFavoriteToggle(course.id),
          onTap: () => _navigateToCourseDetail(context, course),
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
