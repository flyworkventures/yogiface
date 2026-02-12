import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yogiface/Models/exercise_model.dart' as api;
import 'package:yogiface/Repositories/auth_repository.dart';
import 'package:yogiface/Repositories/exercise_repository.dart';
import 'package:yogiface/Repositories/notification_repository.dart';
import 'package:yogiface/Repositories/personal_program_repository.dart';
import 'package:yogiface/Repositories/referral_repository.dart';
import 'package:yogiface/Repositories/user_repository.dart';
import 'package:yogiface/Riverpod/Controllers/exercise_state.dart';
import 'package:yogiface/Riverpod/Providers/exercise_provider.dart';
import 'package:yogiface/Riverpod/Providers/premium_provider.dart';
import 'package:yogiface/Riverpod/Providers/user_provider.dart';
import 'package:yogiface/Services/dio_service.dart';
import 'package:yogiface/Services/secure_storage_service.dart';

class AllProviders {
  static final exerciseProvider =
      StateNotifierProvider.autoDispose<ExerciseNotifier, ExerciseState>((ref) {
    return ExerciseNotifier();
  });

  static final dioServiceProvider = Provider<DioService>((ref) {
    return DioService(ref);
  });

  static final authRepositoryProvider = Provider<AuthRepository>((ref) {
    return AuthRepository(ref);
  });

  static final secureStorageServiceProvider =
      Provider<SecureStorageService>((ref) {
    return SecureStorageService();
  });

  /// Provider for ExerciseRepository
  static final exerciseRepositoryProvider = Provider<ExerciseRepository>((ref) {
    return ExerciseRepository(ref);
  });

  /// Provider for fetching all exercises from backend
  static final allExercisesProvider =
      FutureProvider.family<List<api.Exercise>, String>(
    (ref, lang) async {
      final repository = ref.read(exerciseRepositoryProvider);
      final response = await repository.getAllExercises(lang: lang);
      return response.data.exercises ?? [];
    },
  );

  /// Provider for fetching a specific exercise by ID
  static final exerciseByIdProvider =
      FutureProvider.family<api.Exercise?, ({int id, String lang})>(
    (ref, params) async {
      final repository = ref.read(exerciseRepositoryProvider);
      final response = await repository.getExerciseById(
        id: params.id,
        lang: params.lang,
      );
      return response.data.exercise;
    },
  );

  /// Provider for fetching user's favorite exercises
  static final favoriteExercisesProvider =
      FutureProvider.family<List<api.Exercise>, String>(
    (ref, lang) async {
      final repository = ref.read(exerciseRepositoryProvider);
      final response = await repository.getFavorites(lang: lang);
      return response.data.exercises ?? [];
    },
  );

  /// Provider for managing favorite toggle actions
  static final toggleFavoriteProvider =
      StateNotifierProvider<ToggleFavoriteNotifier, AsyncValue<void>>(
    (ref) => ToggleFavoriteNotifier(ref),
  );

  static final userRepositoryProvider = Provider<UserRepository>((ref) {
    return UserRepository(ref);
  });

  static final userProvider =
      StateNotifierProvider<UserNotifier, UserState>((ref) {
    return UserNotifier(ref);
  });

  static final referralRepositoryProvider = Provider<ReferralRepository>((ref) {
    return ReferralRepository(ref);
  });

  static final notificationRepositoryProvider =
      Provider<NotificationRepository>((ref) {
    return NotificationRepository(ref);
  });

  static final personalProgramRepositoryProvider =
      Provider<PersonalProgramRepository>((ref) {
    return PersonalProgramRepository(ref);
  });

  static final premiumProvider =
      StateNotifierProvider<PremiumNotifier, bool>((ref) {
    return PremiumNotifier(onPremiumPurchased: () async {
      await ref.read(userProvider.notifier).refreshUser();
    });
  });
}
