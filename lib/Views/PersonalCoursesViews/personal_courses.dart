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
      {
        'name': context.t.onboarding.fullface,
        'image': AppImages.focusareafullface,
        'type': 'full_face'
      },
      {
        'name': context.t.onboarding.eyes,
        'image': AppImages.focusareaeyes,
        'type': 'eye_area'
      },
      {
        'name': context.t.onboarding.nose,
        'image': AppImages.focusareanoise,
        'type': 'nose_area'
      },
      {
        'name': context.t.onboarding.cheeks,
        'image': AppImages.focusareacheek,
        'type': 'cheeks_mid_face'
      },
      {
        'name': context.t.onboarding.lips,
        'image': AppImages.focusarea1,
        'type': 'lip_area'
      },
      {
        'name': context.t.onboarding.jawline,
        'image': AppImages.focusareajawline,
        'type': 'jawline_chin'
      },
      {
        'name': context.t.onboarding.forehead,
        'image': AppImages.focusareaforehead,
        'type': 'forehead_brow'
      },
      {
        'name': context.t.onboarding.neck,
        'image': AppImages.focusareaneck,
        'type': 'neck_decollete'
      },
    ];

    final tabController = useTabController(initialLength: focusAreas.length);
    final selectedIndex = useState(0);

    useEffect(() {
      void listener() {
        selectedIndex.value = tabController.index;
      }

      tabController.addListener(listener);
      return () => tabController.removeListener(listener);
    }, [tabController]);

    // Fetch personal program
    final personalProgramRepository =
        ref.watch(AllProviders.personalProgramRepositoryProvider);
    final exerciseRepository =
        ref.watch(AllProviders.exerciseRepositoryProvider);

    // Use memoized future to fetch data once
    final programSnapshot = useFuture(
      useMemoized(
          () => personalProgramRepository.getPersonalProgram(
              languageCode: LocaleSettings.currentLocale.languageCode),
          [LocaleSettings.currentLocale.languageCode]),
    );

    // Local favorite state
    final favoriteCourses = useState<Set<int>>({});

    // Initial favorite population
    useEffect(() {
      if (programSnapshot.hasData && programSnapshot.data != null) {
        final favorites = programSnapshot.data!.exercises
            .where((e) => e.isFavorited)
            .map((e) => e.id)
            .toSet();
        favoriteCourses.value = favorites;
      }
      return null;
    }, [programSnapshot.hasData]);

    final allExercises = programSnapshot.data?.exercises ?? [];

    final currentType = focusAreas[selectedIndex.value]['type'];
    final filteredExercises = useMemoized(() {
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

              // Content
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 16),

                        // Focus Areas List
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

                        if (programSnapshot.connectionState ==
                            ConnectionState.waiting)
                          const Center(child: CircularProgressIndicator())
                        else if (programSnapshot.hasError)
                          Center(
                              child: Text(
                                  '${context.t.courses.error}: ${programSnapshot.error}'))
                        else if (filteredExercises.isEmpty)
                          Center(
                              child:
                                  Text(context.t.courseDetail.noExercisesFound))
                        else
                          CoursesList(
                            key: ValueKey(selectedIndex.value),
                            courses: filteredExercises,
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
                              }
                            },
                          ),
                        const SizedBox(height: 100),
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
