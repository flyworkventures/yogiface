import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yogiface/Views/HomeView/widgets/featured_course_card.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/shared/custom_overlay.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

class FavoriteExerciseView extends HookWidget {
  const FavoriteExerciseView({super.key});

  static const List<String> _tabs = [
    'Alın',
    'Gözler',
    'Burun',
    'Dudaklar',
    'Yanaklar'
  ];

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: _tabs.length);
    final selectedIndex = useState(0);

    final favoritesByCategory = useState<Map<String, List<FavoriteExercise>>>({
      'Alın': [
        FavoriteExercise(
          id: '1',
          imagePath: AppImages.maincheeflifter,
          title: 'The Forehead Smoother',
          description:
              'This move relaxes tension in the forehead muscles and helps smooth horizontal lines.',
          thumbnailPath: AppImages.popularcourses1,
        ),
      ],
      'Gözler': [
        FavoriteExercise(
          id: '2',
          imagePath: AppImages.focusarea2,
          title: 'The "V" Move',
          description:
              'Strengthens the delicate skin around the eyes, lifts drooping eyelids, and erases signs of fatigue.',
          thumbnailPath: AppImages.popularcourses1,
        ),
        FavoriteExercise(
          id: '3',
          imagePath: AppImages.focusarea2,
          title: 'The Eye Lift',
          description:
              'Targets the muscles around your eyes to reduce puffiness and dark circles.',
          thumbnailPath: AppImages.popularcourses1,
        ),
      ],
      'Burun': [],
      'Dudaklar': [
        FavoriteExercise(
          id: '4',
          imagePath: AppImages.focusarea2,
          title: 'The Lip Plumper',
          description:
              'Enhances lip fullness naturally by exercising the orbicularis oris muscle.',
          thumbnailPath: AppImages.popularcourses1,
        ),
      ],
      'Yanaklar': [
        FavoriteExercise(
          id: '5',
          imagePath: AppImages.maincheeflifter,
          title: 'The Cheek Lifter',
          description:
              'Lifts the cheek muscles (Zygomaticus) which are most prone to gravity, restoring the facial oval.',
          thumbnailPath: AppImages.cheeflifter,
        ),
      ],
    });

    useEffect(() {
      void listener() {
        selectedIndex.value = tabController.index;
      }

      tabController.addListener(listener);
      return () => tabController.removeListener(listener);
    }, [tabController]);

    void toggleFavorite(String category, String id) {
      final updated = Map<String, List<FavoriteExercise>>.from(
        favoritesByCategory.value,
      );
      updated[category] =
          updated[category]?.where((exercise) => exercise.id != id).toList() ??
              [];
      favoritesByCategory.value = updated;

      CustomOverlay.show(
        context,
        title: t.removedFromFavoritesTitle,
        message: t.removedFromFavorites,
        icon: AppIcons.heart2,
        type: OverlayType.favoriteRemoved,
      );
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
          'Favori Egzersizler',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.onSurface,
          ),
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
          SizedBox(
            height: 36,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: _tabs.length,
              separatorBuilder: (_, __) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                final isSelected = selectedIndex.value == index;
                return GestureDetector(
                  onTap: () => tabController.animateTo(index),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color:
                          isSelected ? const Color(0xFFCB9EF6) : Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: isSelected
                            ? const Color(0xFFCB9EF6)
                            : const Color(0xFFE0E0E0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        _tabs[index],
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight:
                              isSelected ? FontWeight.w500 : FontWeight.w400,
                          color: isSelected ? Colors.white : Colors.black87,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: _tabs.map((tab) {
                final exercises = favoritesByCategory.value[tab] ?? [];
                if (exercises.isEmpty) {
                  return _buildEmptyState();
                }
                return _buildExerciseList(
                  exercises,
                  (id) => toggleFavorite(tab, id),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
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
              'Henüz Favori Egzersiz Eklemediniz',
              textAlign: TextAlign.center,
              style: AppTextStyles.onboardingBody(
                18,
                weight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Favori egzersizlerini belirlemek istiyorsan egzersizlerim sayfasından beğendiğin egzersizleri ekleyebilirsin.',
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

  Widget _buildExerciseList(
    List<FavoriteExercise> exercises,
    Function(String) onFavoriteTap,
  ) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: exercises.length,
      separatorBuilder: (_, __) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        final exercise = exercises[index];
        return FeaturedCourseCard(
          imagePath: exercise.imagePath,
          title: exercise.title,
          description: exercise.description,
          thumbnailPath: exercise.thumbnailPath,
          isFavorite: true,
          showFavoriteButton: true,
          onFavoriteTap: () => onFavoriteTap(exercise.id),
          onTap: () {},
        );
      },
    );
  }
}

class FavoriteExercise {
  final String id;
  final String imagePath;
  final String title;
  final String description;
  final String thumbnailPath;

  FavoriteExercise({
    required this.id,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.thumbnailPath,
  });
}
