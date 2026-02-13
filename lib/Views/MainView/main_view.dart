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

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';

class MainNavigationView extends HookConsumerWidget {
  const MainNavigationView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Route arguments'tan initialIndex'i al
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    // Eğer navigation state henüz initialize edilmediyse arguments'tan veya default (1) olarak set et
    useEffect(() {
      final initialIndex = args?['initialIndex'] as int? ?? 1;
      // Sadece ilk buildde set et - future.microtask ile build hatasını önle
      Future.microtask(() {
        ref.read(AllProviders.bottomNavIndexProvider.notifier).state =
            initialIndex;
      });
      return null;
    }, []);

    final currentIndex = ref.watch(AllProviders.bottomNavIndexProvider);

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
        body: pages[currentIndex],
        extendBody: true,
        bottomNavigationBar: SafeArea(
          child: BottomNavBarWidget(
            currentIndex: currentIndex,
            onTap: (index) {
              ref.read(AllProviders.bottomNavIndexProvider.notifier).state =
                  index;
            },
          ),
        ),
      ),
    );
  }
}
