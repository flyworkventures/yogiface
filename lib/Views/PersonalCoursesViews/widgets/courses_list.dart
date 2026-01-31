import 'package:flutter/material.dart';
import 'package:yogiface/Views/CourseDetailView/course_detail_view.dart';
import 'package:yogiface/Views/HomeView/widgets/featured_course_card.dart';

class CoursesList extends StatelessWidget {
  final List<Map<String, String>> courses;
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
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: courses.length,
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        final course = courses[index];
        final isFavorite = favoriteCourses.contains(index);
        return FeaturedCourseCard(
          imagePath: course['image']!,
          title: course['title']!,
          description: course['description']!,
          thumbnailPath: course['thumbnail']!,
          showFavoriteButton: true,
          isFavorite: isFavorite,
          onFavoriteTap: () => onFavoriteToggle(index),
          onTap: () => _navigateToCourseDetail(context, course),
        );
      },
    );
  }

  void _navigateToCourseDetail(
      BuildContext context, Map<String, String> course) {
    final courseDetail = Course(
      title: course['title']!,
      description: course['description']!,
      imagePath: course['image']!,
      thumbnailPath: course['thumbnail']!,
      benefits: [
        BenefitItem(
          title: 'Natural toning',
          description:
              'Opens horizontal lines on the forehead and prevents them from deepening.',
        ),
        BenefitItem(
          title: 'Botox Effect',
          description:
              'Relaxes tense muscles and breaks the habit of frowning.',
        ),
        BenefitItem(
          title: 'Stress Relief',
          description:
              'Relieves stress accumulated on the forehead and alleviates headaches.',
        ),
        BenefitItem(
          title: 'Radiant Appearance',
          description: 'Boosts blood circulation to give the skin a glow.',
        ),
        BenefitItem(
          title: 'De-Puffing',
          description:
              'Reduces facial puffiness through its lymphatic drainage effect.',
        ),
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
