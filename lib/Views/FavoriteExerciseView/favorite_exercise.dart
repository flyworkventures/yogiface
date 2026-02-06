import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yogiface/Models/exercise_model.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/Views/CoursesView/widgets/courses_list.dart';
import 'package:yogiface/Views/CoursesView/widgets/focus_areas_list.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/shared/custom_overlay.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';
import 'package:yogiface/utils/print.dart';

class FavoriteExerciseView extends HookConsumerWidget {
  const FavoriteExerciseView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Focus Areas configuration matching AllCoursesView
    final focusAreas = [
      {
        'name': t.onboarding.fullface,
        'image': AppImages.yuz,
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
        'image': AppImages.cene,
        'type': 'jawline_chin'
      },
      {
        'name': t.onboarding.forehead,
        'image': AppImages.focusareaforehead,
        'type': 'forehead_brow'
      },
      {
        'name': t.onboarding.neck,
        'image': AppImages.boyun,
        'type': 'neck_decollete'
      },
    ];

    final tabController = useTabController(initialLength: focusAreas.length);
    final selectedIndex = useState(0);

    // Repository and Data Fetching
    final exerciseRepository =
        ref.watch(AllProviders.exerciseRepositoryProvider);
    final refreshTrigger = useState(0); // To force refresh when needed

    // Fetch user favorites
    final favoritesSnapshot = useFuture(
      useMemoized(() => exerciseRepository.getFavorites(lang: 'en'),
          [refreshTrigger.value]),
    );

    // Local state to manage favorites list for immediate UI updates
    // We store the full list of Exercise objects here
    final favoritesList = useState<List<Exercise>>([]);

    // Populate local list when data is fetched
    useEffect(() {
      if (favoritesSnapshot.hasData && favoritesSnapshot.data != null) {
        favoritesList.value = favoritesSnapshot.data!.data.exercises ?? [];
      }
      return null;
    }, [favoritesSnapshot.hasData, favoritesSnapshot.data]);

    useEffect(() {
      void listener() {
        selectedIndex.value = tabController.index;
      }

      tabController.addListener(listener);
      return () => tabController.removeListener(listener);
    }, [tabController]);

    // Filtering logic
    final currentType = focusAreas[selectedIndex.value]['type'];

    final currentExercises = useMemoized(() {
      if (currentType == 'full_face') {
        return favoritesList.value.where((e) => e.type == 'full_face').toList();
      }
      return favoritesList.value.where((e) => e.type == currentType).toList();
    }, [favoritesList.value, currentType]);

    // Toggle/Remove Favorite handler
    Future<void> handleRemoveFavorite(int id) async {
      // Optimistic update
      final originalList = List<Exercise>.from(favoritesList.value);

      // Remove from local list immediately
      final updatedList = favoritesList.value.where((e) => e.id != id).toList();
      favoritesList.value = updatedList;

      CustomOverlay.show(
        context,
        title: t.removedFromFavoritesTitle,
        message: t.removedFromFavorites,
        icon: AppIcons.heart2,
        type: OverlayType.favoriteRemoved,
      );

      try {
        await exerciseRepository.removeFromFavorites(id: id);
      } catch (e) {
        Print.error("Failed to remove favorite: $e");
        // Revert optimization if failed
        favoritesList.value = originalList;
        // Optionally show error overlay
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          context.t.favoriteExercises,
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.tune, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
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
          const SizedBox(height: 16),
          Expanded(
            child: favoritesSnapshot.connectionState == ConnectionState.waiting
                ? const Center(child: CircularProgressIndicator())
                : favoritesSnapshot.hasError
                    ? Center(child: Text('${favoritesSnapshot.error}'))
                    : favoritesList.value.isEmpty
                        ? _buildEmptyState(context)
                        : currentExercises.isEmpty
                            ? Center(
                                child: Text(context.t.noFavoritesInCategory),
                              )
                            : Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: CoursesList(
                                  courses: currentExercises,
                                  // For favorites view, all displayed items are by definition favorites
                                  favoriteCourses:
                                      currentExercises.map((e) => e.id).toSet(),
                                  onFavoriteToggle: (id) =>
                                      handleRemoveFavorite(id),
                                ),
                              ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: Color(0xFFF5F5F5),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.favorite,
                size: 40,
                color: Color(0xFFBDBDBD),
              ),
            ),
            const SizedBox(height: 32),
            Text(
              context.t.noFavoritesAdded,
              textAlign: TextAlign.center,
              style: AppTextStyles.onboardingBody(
                18,
                weight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              context.t.favoriteExercisesDescription,
              textAlign: TextAlign.center,
              style: AppTextStyles.onboardingBody(
                14,
                weight: FontWeight.w400,
              ).copyWith(
                color: const Color(0xFF757575),
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
