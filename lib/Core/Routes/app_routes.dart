import 'package:flutter/material.dart';
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

class AppRoutes {
  static const String splash = '/splash';
  static const String main = '/main';
  static const String courses = '/courses';
  static const String course = '/course';
  static const String facialScan = '/facial-scan';
  static const String login = '/login';
  static const String onboarding = '/onboarding';
  static const String personalProgram = '/personal-program';
  static const String notifications = '/notifications';
  static const String profile = '/profile';
  static const String editProfile = '/edit-profile';
  static const String faq = '/faq';
  static const String shareFriends = '/share-friends';
  static const String invitationCode = '/invitation-code';
  static const String favoriteExercises = '/favorite-exercises';
  static const String language = '/language';
  static const String personalCourses = '/personal-courses';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      splash: (context) => const SplashView(),
      main: (context) => const MainNavigationView(),
      courses: (context) => const AllCoursesView(),
      course: (context) => const CourseView(),
      facialScan: (context) => const FacialScanView(),
      login: (context) => const LoginView(),
      onboarding: (context) => const OnboardingView(),
      personalProgram: (context) => const PersonalProgramView(),
      notifications: (context) => const NotificationsView(),
      profile: (context) => const ProfileView(),
      editProfile: (context) => const EditProfileView(),
      faq: (context) => const FaqPage(),
      shareFriends: (context) => const ShareWithFriendsPage(),
      invitationCode: (context) => const InvitationCode(),
      favoriteExercises: (context) => const FavoriteExerciseView(),
      language: (context) => const LanguageViewPage(),
      personalCourses: (context) => const PersonalCourses(),
    };
  }
}
