import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/Views/CoursesView/widgets/course_header.dart';
import 'package:yogiface/Views/CoursesView/widgets/courses_list.dart';
import 'package:yogiface/Views/CoursesView/widgets/focus_areas_list.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/shared/custom_overlay.dart';
import 'package:yogiface/utils/app_assets.dart';
import 'package:yogiface/utils/print.dart';

class PersonalCourses extends HookConsumerWidget {
  const PersonalCourses({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final focusAreas = [
      {'name': t.full_face, 'image': AppImages.yuz, 'type': 'full_face'},
      {
        'name': t.eye_area,
        'image': AppImages.focusareaeyes,
        'type': 'eye_area'
      },
      {
        'name': t.nose_area,
        'image': AppImages.focusareanoise,
        'type': 'nose_area'
      },
      {
        'name': t.cheeks_mid_face,
        'image': AppImages.focusareacheek,
        'type': 'cheeks_mid_face'
      },
      {'name': t.lip_area, 'image': AppImages.focusarea1, 'type': 'lip_area'},
      {'name': t.jawline_chin, 'image': AppImages.cene, 'type': 'jawline_chin'},
      {
        'name': t.forehead_brow,
        'image': AppImages.focusareaforehead,
        'type': 'forehead_brow'
      },
      {
        'name': t.neck_decollete,
        'image': AppImages.boyun,
        'type': 'neck_decollete'
      },
    ];

    final tabController = useTabController(initialLength: focusAreas.length);
    final selectedIndex = useState(0);

    // Fetch exercises
    final exerciseRepository =
        ref.watch(AllProviders.exerciseRepositoryProvider);
    final exercisesSnapshot = useFuture(
      useMemoized(() => exerciseRepository.getAllExercises(lang: 'en'),
          []), // TODO: dynamic lang
    );

    // Local favorite state
    final favoriteCourses = useState<Set<int>>({});

    useEffect(() {
      void listener() {
        selectedIndex.value = tabController.index;
      }

      tabController.addListener(listener);
      return () => tabController.removeListener(listener);
    }, [tabController]);

    // Initial favorite population
    useEffect(() {
      if (exercisesSnapshot.hasData && exercisesSnapshot.data != null) {
        final favorites = exercisesSnapshot.data!.data.exercises
            ?.where((e) => e.isFavorited)
            .map((e) => e.id)
            .toSet();
        if (favorites != null) {
          favoriteCourses.value = favorites;
        }
      }
      return null;
    }, [exercisesSnapshot.hasData]);

    final currentType = focusAreas[selectedIndex.value]['type'];
    final allExercises = exercisesSnapshot.data?.data.exercises ?? [];

    final currentCourses = useMemoized(() {
      if (currentType == 'full_face') {
        return allExercises.where((e) => e.type == 'full_face').toList();
      }
      return allExercises.where((e) => e.type == currentType).toList();
    }, [allExercises, currentType]);

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (result, e) async {
        Navigator.of(context).pushReplacementNamed('/main');
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              // Header
              CourseHeader(
                showBackButton: true,
                title: context.t.courses.personalCoursesTitle,
                onBackPressed: () {
                  Navigator.of(context).pushReplacementNamed('/main');
                },
              ),

              // İçerik
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 16),

                        // Focus Areas - TabBar olarak
                        FocusAreasList(
                          focusAreas: focusAreas
                              .map((e) => {
                                    'name': e['name'] as String,
                                    'image': e['image'] as String
                                  })
                              .toList(),
                          selectedIndex: selectedIndex.value,
                          onAreaSelected: (index) {
                            tabController.animateTo(index);
                            selectedIndex.value = index;
                          },
                        ),

                        const SizedBox(height: 24),

                        if (exercisesSnapshot.connectionState ==
                            ConnectionState.waiting)
                          const Center(child: CircularProgressIndicator())
                        else if (exercisesSnapshot.hasError)
                          Center(
                              child: Text(
                                  '${context.t.courses.error}: ${exercisesSnapshot.error}'))
                        else
                          AnimatedSwitcher(
                            duration: const Duration(milliseconds: 300),
                            child: CoursesList(
                              key: ValueKey(selectedIndex.value),
                              courses: currentCourses,
                              favoriteCourses: favoriteCourses.value,
                              onFavoriteToggle: (id) async {
                                final newSet =
                                    Set<int>.from(favoriteCourses.value);
                                final isFav = newSet.contains(id);

                                if (isFav) {
                                  newSet.remove(id);
                                  CustomOverlay.show(
                                    context,
                                    title: t.removedFromFavoritesTitle,
                                    message: t.removedFromFavorites,
                                    icon: AppIcons.heart2,
                                    type: OverlayType.favoriteRemoved,
                                  );
                                } else {
                                  newSet.add(id);
                                  CustomOverlay.show(
                                    context,
                                    message: t.addedToFavoritesTitle,
                                    icon: AppIcons.heart2,
                                    type: OverlayType.success,
                                  );
                                }
                                favoriteCourses.value = newSet;

                                try {
                                  await exerciseRepository.toggleFavorite(
                                      id: id, isFavorited: isFav);
                                } catch (e) {
                                  Print.error("Failed to toggle favorite: $e");
                                  // Revert on error could be implemented here
                                }
                              },
                            ),
                          ),

                        const SizedBox(height: 100), // Bottom nav için boşluk
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
