import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yogiface/Models/personal_program_model.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/Services/dio_service.dart';

class PersonalProgramRepository {
  PersonalProgramRepository(this.ref);
  final Ref ref;

  DioService get _dioService => ref.read(AllProviders.dioServiceProvider);

  /// Save user personal preferences
  /// POST /api/user/personal-preferences
  Future<void> savePersonalPreferences(PersonalPreferences preferences) async {
    await _dioService.post(
      'user/personal-preferences',
      data: preferences.toJson(),
    );
  }

  /// Get user's personal exercise program
  /// GET /api/user/personal-program
  Future<PersonalProgram> getPersonalProgram({String? languageCode}) async {
    final response = await _dioService.get(
      'user/personal-program',
      queryParameters: languageCode != null ? {'lang': languageCode} : null,
    );

    if (response.data['success'] == true) {
      return PersonalProgram.fromJson(response.data);
    } else {
      throw Exception(response.data['message'] ?? 'Failed to load program');
    }
  }
}
