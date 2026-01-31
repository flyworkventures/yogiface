import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yogiface/Views/Auth/LoginView/login_view.dart';
import 'package:yogiface/Views/CourseView/course_view.dart';
import 'package:yogiface/Views/CoursesView/courses_view.dart';
import 'package:yogiface/Views/EditProfileView/edit_profile_view.dart';
import 'package:yogiface/Views/FacialScanView/facial_scan_view.dart';
import 'package:yogiface/Views/FaqView/faq_view.dart';
import 'package:yogiface/Views/FavoriteExerciseView/favorite_exercise.dart';
import 'package:yogiface/Views/InvitationCodeView/invitation_code.dart';
import 'package:yogiface/Views/LanguageView/language_view.dart';
import 'package:yogiface/Views/MainView/main_view.dart';
import 'package:yogiface/Views/NotificationsView/notifications_view.dart';
import 'package:yogiface/Views/OnboardingView/onboarding_view.dart';
import 'package:yogiface/Views/PersonalCoursesViews/personal_courses.dart';
import 'package:yogiface/Views/PersonalProgram/personal_program_view.dart';
import 'package:yogiface/Views/ProfileView/profile_view.dart';
import 'package:yogiface/Views/SharefriendsView/share_friends.dart';
import 'package:yogiface/Views/SplashView/splash_view.dart';
import 'package:yogiface/gen/strings.g.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // Future.delayed(const Duration(seconds: 2), () {
  FlutterNativeSplash.remove();
  // });

  runApp(
    ProviderScope(
      child: TranslationProvider(
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yogiface',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashView(),
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      routes: {
        '/splash': (context) => const SplashView(),
        '/main': (context) => const MainNavigationView(), // Ana navigasyon
        '/courses': (context) => const AllCoursesView(),
        '/course': (context) => const CourseView(),
        '/facial-scan': (context) => const FacialScanView(),
        '/login': (context) => const LoginView(),
        '/onboarding': (context) => const OnboardingView(),
        '/personal-program': (context) => const PersonalProgramView(),
        '/notifications': (context) => const NotificationsView(),
        '/profile': (context) => const ProfileView(),
        '/edit-profile': (context) => const EditProfileView(),
        '/faq': (context) => const FaqPage(),
        '/share-friends': (context) => const ShareWithFriendsPage(),
        '/invitation-code': (context) => const InvitationCode(),
        '/favorite-exercises': (context) => const FavoriteExerciseView(),
        '/language': (context) => const LanguageViewPage(),
        '/personal-courses': (context) => const PersonalCourses(),
      },
    );
  }
}
