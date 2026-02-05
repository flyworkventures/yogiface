import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/Services/dio_service.dart';
import 'package:yogiface/utils/print.dart';

/// Provider for OnboardingRepository
final onboardingRepositoryProvider = Provider<OnboardingRepository>((ref) {
  return OnboardingRepository(ref);
});

class OnboardingRepository {
  OnboardingRepository(this.ref);
  final Ref ref;

  DioService get _dioService => ref.read(AllProviders.dioServiceProvider);

  /// Complete onboarding - save all data at once
  /// POST /api/onboarding/complete
  Future<Map<String, dynamic>> completeOnboarding({
    String? fullName,
    required String gender,
    required int age,
    required int weight,
    required int height,
    required String skinType,
    required bool hasBotox,
    required String targetFaceShape,
    required String makeupFrequency,
    required List<String> skinConcerns,
    required List<String> objectives,
    required List<String> improvementAreas,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _dioService.postRaw(
        'onboarding/complete',
        data: {
          if (fullName != null && fullName.isNotEmpty) 'full_name': fullName,
          'gender': gender,
          'age': age,
          'weight': weight,
          'height': height,
          'skin_type': skinType,
          'has_botox': hasBotox,
          'target_face_shape': targetFaceShape,
          'makeup_frequency': makeupFrequency,
          'skin_concerns': skinConcerns,
          'objectives': objectives,
          'improvement_areas': improvementAreas,
        },
        cancelToken: cancelToken,
      );

      Print.info('Onboarding completed successfully');
      return response.data as Map<String, dynamic>;
    } catch (e) {
      Print.error('Error completing onboarding: $e');
      rethrow;
    }
  }

  /// Get onboarding status
  /// GET /api/onboarding/status
  Future<Map<String, dynamic>> getOnboardingStatus({
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _dioService.get(
        'onboarding/status',
        cancelToken: cancelToken,
      );

      Print.info('Onboarding status retrieved');
      return response.data as Map<String, dynamic>;
    } catch (e) {
      Print.error('Error getting onboarding status: $e');
      rethrow;
    }
  }
}
