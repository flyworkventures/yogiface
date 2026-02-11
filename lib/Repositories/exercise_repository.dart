import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yogiface/Models/exercise_model.dart';
import 'package:yogiface/Services/dio_service.dart';
import 'package:yogiface/utils/print.dart';

class ExerciseRepository {
  ExerciseRepository(this.ref);
  final Ref ref;

  DioService get _dioService => ref.read(dioServiceProvider);
  // Öneri egzersizlerini getir
  Future<List<Exercise>> getRecommendations({
    String lang = 'en',
    int limit = 10,
    int minScore = 0,
  }) async {
    try {
      Print.info(
          '🌍 getRecommendations called with lang: $lang, limit: $limit, minScore: $minScore');
      final response = await _dioService.get(
        'exercises/recommendations',
        queryParameters: {
          'lang': lang,
          'limit': limit,
          'minScore': minScore,
        },
      );

      Print.info('📦 Recommendations Response: ${response.data}');
      final List exercisesJson = response.data['data']['exercises'];
      final recommendations =
          exercisesJson.map((json) => Exercise.fromJson(json)).toList();

      if (recommendations.isNotEmpty) {
        Print.info(
            '📝 First recommendation: ${recommendations.first.title} (score: ${recommendations.first.toJson()['recommendationScore']})');
        Print.info(
            '✅ Total recommendations returned: ${recommendations.length}');
      } else {
        Print.info('⚠️ No recommendations found');
      }

      return recommendations;
    } catch (e) {
      Print.error('❌ Failed to load recommendations: $e');
      throw Exception('Failed to load recommendations: $e');
    }
  }

  /// Get all exercises with translations
  /// GET /api/exercises?lang=en
  Future<ExerciseResponse> getAllExercises({
    String lang = 'en',
    CancelToken? cancelToken,
  }) async {
    try {
      Print.info('🌍 getAllExercises called with lang: $lang');
      final response = await _dioService.get(
        'exercises',
        queryParameters: {'lang': lang},
        cancelToken: cancelToken,
      );
      Print.info('📦 Exercises Response: ${response.data}');
      final result =
          ExerciseResponse.fromJson(response.data as Map<String, dynamic>);
      if (result.data.exercises?.isNotEmpty ?? false) {
        Print.info(
            '📝 First exercise title: ${result.data.exercises!.first.title}');
      }
      return result;
    } catch (e) {
      Print.error('Error fetching all exercises: $e');
      rethrow;
    }
  }

  /// Get exercise by ID with translations
  /// GET /api/exercises/:id?lang=en
  Future<ExerciseResponse> getExerciseById({
    required int id,
    String lang = 'en',
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _dioService.get(
        'exercises/$id',
        queryParameters: {'lang': lang},
        cancelToken: cancelToken,
      );

      return ExerciseResponse.fromJson(response.data as Map<String, dynamic>);
    } catch (e) {
      Print.error('Error fetching exercise by id: $e');
      rethrow;
    }
  }

  /// Get user's favorite exercises
  /// GET /api/exercises/favorites?lang=en
  Future<ExerciseResponse> getFavorites({
    String lang = 'en',
    CancelToken? cancelToken,
  }) async {
    try {
      Print.info('🌍 getFavorites called with lang: $lang');
      final response = await _dioService.get(
        'exercises/favorites',
        queryParameters: {'lang': lang},
        cancelToken: cancelToken,
      );
      Print.info('📦 Favorites Response: ${response.data}');
      final result =
          ExerciseResponse.fromJson(response.data as Map<String, dynamic>);
      if (result.data.exercises?.isNotEmpty ?? false) {
        Print.info(
            '📝 First favorite title: ${result.data.exercises!.first.title}');
      }
      return result;
    } catch (e) {
      Print.error('Error fetching favorites: $e');
      rethrow;
    }
  }

  /// Add exercise to favorites
  /// POST /api/exercises/:id/favorite
  Future<Map<String, dynamic>> addToFavorites({
    required int id,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _dioService.postRaw(
        'exercises/$id/favorite',
        data: {},
        cancelToken: cancelToken,
      );

      return response.data as Map<String, dynamic>;
    } catch (e) {
      Print.error('Error adding to favorites: $e');
      rethrow;
    }
  }

  /// Get top 3 most favorited exercises
  /// GET /api/exercises/popular?lang=en
  Future<ExerciseResponse> getPopularExercises({
    String lang = 'en',
    CancelToken? cancelToken,
  }) async {
    try {
      Print.info('🌍 getPopularExercises called with lang: $lang');
      final response = await _dioService.get(
        'exercises/popular',
        queryParameters: {'lang': lang},
        cancelToken: cancelToken,
      );
      Print.info('📦 Popular Exercises Response: ${response.data}');
      final result =
          ExerciseResponse.fromJson(response.data as Map<String, dynamic>);
      return result;
    } catch (e) {
      Print.error('Error fetching popular exercises: $e');
      rethrow;
    }
  }

  /// Get most favorited exercise for each type
  /// GET /api/exercises/popular-by-type?lang=en
  Future<ExerciseResponse> getPopularExercisesByType({
    String lang = 'en',
    CancelToken? cancelToken,
  }) async {
    try {
      Print.info('🌍 getPopularExercisesByType called with lang: $lang');
      final response = await _dioService.get(
        'exercises/popular-by-type',
        queryParameters: {'lang': lang},
        cancelToken: cancelToken,
      );
      Print.info('📦 Popular Exercises By Type Response: ${response.data}',
          tag: 'PopularExercisesByType');
      final result =
          ExerciseResponse.fromJson(response.data as Map<String, dynamic>);
      return result;
    } catch (e) {
      Print.error('Error fetching popular exercises by type: $e');
      rethrow;
    }
  }

  /// Remove exercise from favorites
  /// DELETE /api/exercises/:id/favorite
  Future<Map<String, dynamic>> removeFromFavorites({
    required int id,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _dioService.delete(
        'exercises/$id/favorite',
        cancelToken: cancelToken,
      );

      return response.data as Map<String, dynamic>;
    } catch (e) {
      Print.error('Error removing from favorites: $e');
      rethrow;
    }
  }

  /// Toggle favorite status
  /// Helper method to add or remove from favorites based on current status
  Future<Map<String, dynamic>> toggleFavorite({
    required int id,
    required bool isFavorited,
    CancelToken? cancelToken,
  }) async {
    if (isFavorited) {
      return await removeFromFavorites(id: id, cancelToken: cancelToken);
    } else {
      return await addToFavorites(id: id, cancelToken: cancelToken);
    }
  }
}

/// DioService provider (should already exist in your project)
final dioServiceProvider = Provider<DioService>((ref) {
  return DioService(ref);
});

final exerciseRepositoryProvider = Provider<ExerciseRepository>((ref) {
  return ExerciseRepository(ref);
});
