import 'package:flutter/material.dart';
import 'package:yogiface/Models/exercise_model.dart';
import 'package:yogiface/Views/CourseDetailView/course_detail_view.dart';
import 'package:yogiface/Views/HomeView/widgets/featured_course_card.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class RecommendedExercisesListScreen extends StatelessWidget {
  const RecommendedExercisesListScreen({
    super.key,
    required this.recommendations,
  });

  final List<Exercise> recommendations;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          context.t.facialScan.result.recommended,
          style: AppTextStyles.heading(18, FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.all(24),
          itemCount: recommendations.length,
          itemBuilder: (context, index) {
            final exercise = recommendations[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: FeaturedCourseCard(
                imagePath: exercise.imageCdnPath,
                title: exercise.title ?? '',
                description: exercise.description ?? '',
                thumbnailPath: exercise.imageCdnPath,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CourseDetailView(
                        course: Course(
                          id: exercise.id,
                          title: exercise.title!,
                          description: exercise.description!,
                          imagePath: exercise.imageCdnPath,
                          thumbnailPath: exercise.imageCdnPath,
                          benefits: [
                            // Parse course.benefits from backend (now a List<String>)
                            // Each string format: "Title: Description"
                            if (exercise.benefits != null &&
                                exercise.benefits!.isNotEmpty)
                              ...exercise.benefits!.map((benefit) {
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
                                    description:
                                        parts.sublist(1).join(':').trim(),
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
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
