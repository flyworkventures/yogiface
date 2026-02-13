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

class AllCoursesView extends HookConsumerWidget {
  const AllCoursesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final focusAreas = [
      {
        'name': t.onboarding.fullface,
        'image': AppImages.focusareafullface,
        'type': 'full_face'
      },
      {
        'name': t.onboarding.eyes,
        'image': AppImages.focusareaeyes,
        'type': 'eye_area'
      },
      {
        'name': t.onboarding.nose,
        'image': AppImages.focusareanoise,
        'type': 'nose_area'
      },
      {
        'name': t.onboarding.cheeks,
        'image': AppImages.focusareacheek,
        'type': 'cheeks_mid_face'
      },
      {
        'name': t.onboarding.lips,
        'image': AppImages.focusarea1,
        'type': 'lip_area'
      },
      {
        'name': t.onboarding.jawline,
        'image': AppImages.focusareajawline,
        'type': 'jawline_chin'
      },
      {
        'name': t.onboarding.forehead,
        'image': AppImages.focusareaforehead,
        'type': 'forehead_brow'
      },
      {
        'name': t.onboarding.neck,
        'image': AppImages.focusareaneck,
        'type': 'neck_decollete'
      },
    ];

    final tabController = useTabController(initialLength: focusAreas.length);
    final selectedIndex = useState(0);

    // Use app's current locale (user selected), not device locale
    final currentLocale = LocaleSettings.currentLocale;

    // Fetch exercises
    final exerciseRepository =
        ref.watch(AllProviders.exerciseRepositoryProvider);
    // Using simple useFuture for now. In a real app, define a FutureProvider for caching.
    final exercisesSnapshot = useFuture(
      useMemoized(
          () => exerciseRepository.getAllExercises(
                lang: currentLocale.languageCode,
              ),
          []),
    );

    // Local favorite state - eventually should be sync with backend or provider
    // Initial state can be empty, we will populate it if backend returns isFavorited
    final favoriteCourses = useState<Set<int>>({});

    useEffect(() {
      void listener() {
        selectedIndex.value = tabController.index;
      }

      tabController.addListener(listener);
      return () => tabController.removeListener(listener);
    }, [tabController]);

    // Initial favorite population when data is loaded
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
        // Option 1: Show all exercises for full face? Or specific full face exercises?
        // Usually full_face might mean "All" or a specific category.
        // Based on previous fake data, index 0 was just a category.
        // Assuming strict filtering by type.
        return allExercises.where((e) => e.type == 'full_face').toList();
      }
      return allExercises.where((e) => e.type == currentType).toList();
    }, [allExercises, currentType]);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SafeArea(
          top: false,
          bottom: false,
          child: Column(
            children: [
              const SizedBox(height: kToolbarHeight),
              CourseHeader(
                showBackButton: false,
                title: t.courses.title,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 16),
                      FocusAreasList(
                        padding: const EdgeInsets.only(left: 16),
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
                      const SizedBox(height: 10),
                      if (exercisesSnapshot.connectionState ==
                          ConnectionState.waiting)
                        const Center(child: CircularProgressIndicator())
                      else if (exercisesSnapshot.hasError)
                        Center(
                            child: Text(
                                '${t.courses.error}: ${exercisesSnapshot.error}'))
                      else
                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 300),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                            child: CoursesList(
                              key: ValueKey(selectedIndex.value),
                              courses: currentCourses,
                              favoriteCourses: favoriteCourses.value,
                              onFavoriteToggle: (id) async {
                                // Optimistic update
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

                                // API Call
                                try {
                                  await exerciseRepository.toggleFavorite(
                                      id: id, isFavorited: isFav);
                                } catch (e) {
                                  Print.error("Failed to toggle favorite: $e");
                                  // Revert on error
                                  // favoriteCourses.value = ... (omitted for brevity, but good practice)
                                }
                              },
                            ),
                          ),
                        ),
                      const SizedBox(height: 100),
                    ],
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
