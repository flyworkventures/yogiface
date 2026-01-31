import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yogiface/Views/CoursesView/courses_view.dart';
import 'package:yogiface/Views/HomeView/home_view.dart';
import 'package:yogiface/Views/MainView/widgets/bottomnavbar.dart';
import 'package:yogiface/Views/ProfileView/profile_view.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/shared/custom_overlay.dart';
import 'package:yogiface/utils/app_assets.dart';

class MainNavigationView extends HookWidget {
  const MainNavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    // Route arguments'tan initialIndex'i al
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final initialIndex = args?['initialIndex'] as int? ?? 1;

    final currentIndex = useState(
        initialIndex); // Başlangıçta Home seçili (ortadaki) veya arguments'tan gelen index

    final lastBackPress = useState<DateTime?>(null);

    final pages = [
      const AllCoursesView(), // Index 0 - Courses
      const HomeView(), // Index 1 - Home
      const ProfileView(), // Index 2 - Profile
    ];

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;

        final now = DateTime.now();
        final backButtonHasBeenPressedBefore = lastBackPress.value != null &&
            now.difference(lastBackPress.value!) < const Duration(seconds: 2);

        if (backButtonHasBeenPressedBefore) {
          SystemNavigator.pop();
          return;
        }

        lastBackPress.value = now;
        CustomOverlay.show(
          context,
          message: t.pressBackAgainToExit,
          icon: AppIcons.trophy,
          type: OverlayType.info,
        );
      },
      child: Scaffold(
        body: pages[currentIndex.value],
        extendBody: true,
        bottomNavigationBar: SafeArea(
          child: BottomNavBarWidget(
            currentIndex: currentIndex.value,
            onTap: (index) {
              currentIndex.value = index;
            },
          ),
        ),
      ),
    );
  }
}
