import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yogiface/Models/exercise_model.dart';
import 'package:yogiface/Services/dio_service.dart';
import 'package:yogiface/utils/print.dart';

class ExerciseRepository {
  ExerciseRepository(this.ref);
  final Ref ref;

  DioService get _dioService => ref.read(dioServiceProvider);

  /// Get all exercises with translations
  /// GET /api/exercises?lang=en
  Future<ExerciseResponse> getAllExercises({
    String lang = 'en',
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _dioService.get(
        'exercises',
        queryParameters: {'lang': lang},
        cancelToken: cancelToken,
      );
      Print.info('Exercises: ${response.data}');
      return ExerciseResponse.fromJson(response.data as Map<String, dynamic>);
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
      final response = await _dioService.get(
        'exercises/favorites',
        queryParameters: {'lang': lang},
        cancelToken: cancelToken,
      );

      return ExerciseResponse.fromJson(response.data as Map<String, dynamic>);
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
