import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yogiface/Views/CoursesView/widgets/course_header.dart';
import 'package:yogiface/Views/CoursesView/widgets/courses_list.dart';
import 'package:yogiface/Views/CoursesView/widgets/focus_areas_list.dart';
import 'package:yogiface/utils/app_assets.dart';

class PersonalCourses extends HookWidget {
  const PersonalCourses({super.key});

  @override
  Widget build(BuildContext context) {
    final focusAreas = [
      {'name': 'Ağız', 'image': AppImages.focusarea1},
      {'name': 'Gözler', 'image': AppImages.focusareaeyes},
      {'name': 'Burun', 'image': AppImages.focusareanoise},
      {'name': 'Yanak', 'image': AppImages.focusareacheek},
      {'name': 'Alın', 'image': AppImages.focusareaforehead},
    ];

    final tabController = useTabController(initialLength: focusAreas.length);
    final selectedIndex = useState(0);
    final favoriteCourses = useState<Set<int>>({});
    useEffect(() {
      void listener() {
        selectedIndex.value = tabController.index;
      }

      tabController.addListener(listener);
      return () => tabController.removeListener(listener);
    }, [tabController]);

    // Her focus area için kurslar
    final coursesByArea = useMemoized(
        () => <int, List<Map<String, String>>>{
              0: [
                // Ağız
                {
                  'title': 'Lip Plumper',
                  'description':
                      'Naturally plumps and defines lips through targeted exercises.',
                  'image': AppImages.focusarea2,
                  'thumbnail': AppImages.popularcourses1,
                },
                {
                  'title': 'Smile Lifter',
                  'description':
                      'Lifts the corners of the mouth and reduces nasolabial folds.',
                  'image': AppImages.focusarea2,
                  'thumbnail': AppImages.popularcourses1,
                },
              ],
              1: [
                // Gözler
                {
                  'title': 'The "V" Move',
                  'description':
                      'Strengthens the delicate skin around the eyes, lifts drooping eyelids, and erases signs of fatigue.',
                  'image': AppImages.focusarea2,
                  'thumbnail': AppImages.popularcourses1,
                },
                {
                  'title': 'Eye Brightener',
                  'description':
                      'Reduces puffiness and dark circles, giving a refreshed look.',
                  'image': AppImages.focusarea2,
                  'thumbnail': AppImages.popularcourses1,
                },
                {
                  'title': 'Crow\'s Feet Eraser',
                  'description':
                      'Smooths fine lines around the eyes for a youthful appearance.',
                  'image': AppImages.focusarea2,
                  'thumbnail': AppImages.popularcourses1,
                },
              ],
              2: [
                // Burun
                {
                  'title': 'Nose Refiner',
                  'description':
                      'Tones the muscles around the nose for a more defined appearance.',
                  'image': AppImages.focusarea2,
                  'thumbnail': AppImages.popularcourses1,
                },
              ],
              3: [
                // Yanak
                {
                  'title': 'The Cheek Lifter',
                  'description':
                      'Lifts the cheek muscles (Zygomaticus) which are most prone to gravity, restoring the facial oval.',
                  'image': AppImages.focusarea2,
                  'thumbnail': AppImages.popularcourses1,
                },
                {
                  'title': 'Cheek Sculptor',
                  'description':
                      'Defines and contours cheekbones for a more sculpted look.',
                  'image': AppImages.focusarea2,
                  'thumbnail': AppImages.popularcourses1,
                },
              ],
              4: [
                // Alın
                {
                  'title': 'The Forehead Smoother',
                  'description':
                      'This move releases tension in the forehead muscles and frown lines accumulated.',
                  'image': AppImages.focusarea2,
                  'thumbnail': AppImages.popularcourses1,
                },
                {
                  'title': 'Brow Lifter',
                  'description':
                      'Lifts drooping brows and opens up the eye area naturally.',
                  'image': AppImages.focusarea2,
                  'thumbnail': AppImages.popularcourses1,
                },
              ],
            },
        []);

    // Mevcut seçili tab'a göre kursları al
    final currentCourses = coursesByArea[selectedIndex.value] ?? [];

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
                title: 'Personal Courses',
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
                          focusAreas: focusAreas,
                          selectedIndex: selectedIndex.value,
                          onAreaSelected: (index) {
                            tabController.animateTo(index);
                            selectedIndex.value = index;
                          },
                        ),

                        const SizedBox(height: 24),

                        // Kurs Kartları Listesi - Seçili tab'a göre
                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 300),
                          child: CoursesList(
                            key: ValueKey(selectedIndex.value),
                            courses: currentCourses,
                            favoriteCourses: favoriteCourses.value,
                            onFavoriteToggle: (index) {
                              final newSet =
                                  Set<int>.from(favoriteCourses.value);
                              if (newSet.contains(index)) {
                                newSet.remove(index);
                              } else {
                                newSet.add(index);
                              }
                              favoriteCourses.value = newSet;
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
