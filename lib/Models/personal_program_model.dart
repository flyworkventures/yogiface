import 'package:yogiface/Models/exercise_model.dart';

class PersonalPreferences {
  final String primaryConcern;
  final String desiredFeeling;
  final String preferredTime;
  final int dailyGoalMinutes;

  PersonalPreferences({
    required this.primaryConcern,
    required this.desiredFeeling,
    required this.preferredTime,
    required this.dailyGoalMinutes,
  });

  Map<String, dynamic> toJson() {
    return {
      'primary_concern': primaryConcern,
      'desired_feeling': desiredFeeling,
      'preferred_time': preferredTime,
      'daily_goal_minutes': dailyGoalMinutes,
    };
  }
}

class PersonalProgram {
  final String status;
  final int daysRemaining;
  final int currentDay;
  final int dailyGoalMinutes;
  final List<Exercise> exercises;

  PersonalProgram({
    required this.status,
    required this.daysRemaining,
    required this.currentDay,
    required this.dailyGoalMinutes,
    required this.exercises,
  });

  factory PersonalProgram.fromJson(Map<String, dynamic> json) {
    return PersonalProgram(
      status: json['program_status'] ?? '',
      daysRemaining: json['days_remaining'] ?? 0,
      currentDay: json['current_day'] ?? 0,
      dailyGoalMinutes: json['daily_goal_minutes'] ?? 0,
      exercises: (json['exercises'] as List?)
              ?.map((e) => _mapToExercise(e))
              .toList() ??
          [],
    );
  }

  static Exercise _mapToExercise(Map<String, dynamic> json) {
    return Exercise(
      id: json['id'],
      slug: json['slug'] ?? '',
      durationMinutes: json['duration_minutes'] ?? 0,
      // Manually constructing the full URL as done in Exercise.fromJson
      imageCdnPath: json['image_cdn_path'] != null
          ? 'https://yogiface.b-cdn.net/exerciseImages${json['image_cdn_path']}'
          : '',
      videoCdnPath: json['video_cdn_path'] != null
          ? 'https://yogiface.b-cdn.net/exerciseVideos${json['video_cdn_path']}'
          : '',
      type: json['type'] ?? '',
      title: json['name'] ?? json['title'],
      description: json['description'],
      benefits: ExerciseParser.parseBenefits(json['benefits']),
      isFavorited: json['is_favorited'] == 1 || json['isFavorited'] == true,
      recommendationScore: json['recommendationScore'],
    );
  }
}

extension ExerciseParser on Exercise {
  static List<String>? parseBenefits(dynamic benefitsData) {
    if (benefitsData == null) return null;

    if (benefitsData is List) {
      return benefitsData.map((e) => e.toString()).toList();
    } else if (benefitsData is String) {
      if (benefitsData.contains('",')) {
        return benefitsData
            .split(',')
            .map((e) => e.trim())
            .where((e) => e.isNotEmpty)
            .toList();
      } else {
        return [benefitsData];
      }
    }
    return null;
  }
}
