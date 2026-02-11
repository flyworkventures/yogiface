class Exercise {
  final int id;
  final String slug;
  final int durationMinutes;
  final String imageCdnPath;
  final String videoCdnPath;
  final String type;
  final String? title;
  final String? description;
  final List<String>? benefits;
  final bool isFavorited;
  final String? language;
  final DateTime? favoritedAt;
  final int? recommendationScore;
  final List<String>? matchedCategories;

  Exercise({
    required this.id,
    required this.slug,
    required this.durationMinutes,
    required this.imageCdnPath,
    required this.videoCdnPath,
    required this.type,
    this.title,
    this.description,
    this.benefits,
    this.isFavorited = false,
    this.language,
    this.favoritedAt,
    this.recommendationScore,
    this.matchedCategories,
  });

  static List<String>? _parseBenefits(dynamic benefitsData) {
    if (benefitsData == null) return null;

    if (benefitsData is List) {
      return benefitsData.map((e) => e.toString()).toList();
    } else if (benefitsData is String) {
      // If it's a string, check if it contains commas (comma-separated benefits)
      if (benefitsData.contains('",')) {
        // Split by comma and clean each benefit
        return benefitsData
            .split(',')
            .map((e) => e.trim())
            .where((e) => e.isNotEmpty)
            .toList();
      } else {
        // Single benefit, wrap it in a list
        return [benefitsData];
      }
    }

    return null;
  }

  factory Exercise.fromJson(Map<String, dynamic> json) {
    return Exercise(
      id: json['id'] as int,
      slug: json['slug'] as String,
      durationMinutes: json['durationMinutes'] as int,
      imageCdnPath:
          'https://yogiface.b-cdn.net/exerciseImages${json['imageCdnPath'] as String}',
      videoCdnPath:
          'https://yogiface.b-cdn.net/exerciseVideos${json['videoCdnPath'] as String}',
      type: json['type'] as String,
      title: json['title'] as String?,
      description: json['description'] as String?,
      benefits: _parseBenefits(json['benefits']),
      isFavorited: json['isFavorited'] as bool? ?? false,
      language: json['language'] as String?,
      favoritedAt: json['favoritedAt'] != null
          ? DateTime.parse(json['favoritedAt'] as String)
          : null,
      recommendationScore: json['recommendationScore'] as int?,
      matchedCategories: json['matchedCategories'] != null
          ? (json['matchedCategories'] as List)
              .map((e) => e.toString())
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'slug': slug,
      'durationMinutes': durationMinutes,
      'imageCdnPath': imageCdnPath,
      'videoCdnPath': videoCdnPath,
      'type': type,
      'title': title,
      'description': description,
      'benefits': benefits,
      'isFavorited': isFavorited,
      'language': language,
      'favoritedAt': favoritedAt?.toIso8601String(),
      'recommendationScore': recommendationScore,
      'matchedCategories': matchedCategories,
    };
  }

  Exercise copyWith({
    int? id,
    String? slug,
    int? durationMinutes,
    String? imageCdnPath,
    String? videoCdnPath,
    String? type,
    String? title,
    String? description,
    List<String>? benefits,
    bool? isFavorited,
    String? language,
    DateTime? favoritedAt,
    int? recommendationScore,
    List<String>? matchedCategories,
  }) {
    return Exercise(
      id: id ?? this.id,
      slug: slug ?? this.slug,
      durationMinutes: durationMinutes ?? this.durationMinutes,
      imageCdnPath: imageCdnPath ?? this.imageCdnPath,
      videoCdnPath: videoCdnPath ?? this.videoCdnPath,
      type: type ?? this.type,
      title: title ?? this.title,
      description: description ?? this.description,
      benefits: benefits ?? this.benefits,
      isFavorited: isFavorited ?? this.isFavorited,
      language: language ?? this.language,
      favoritedAt: favoritedAt ?? this.favoritedAt,
      recommendationScore: recommendationScore ?? this.recommendationScore,
      matchedCategories: matchedCategories ?? this.matchedCategories,
    );
  }
}

class ExerciseResponse {
  final bool success;
  final ExerciseData data;

  ExerciseResponse({
    required this.success,
    required this.data,
  });

  factory ExerciseResponse.fromJson(Map<String, dynamic> json) {
    return ExerciseResponse(
      success: json['success'] as bool,
      data: ExerciseData.fromJson(json['data'] as Map<String, dynamic>),
    );
  }
}

class ExerciseData {
  final List<Exercise>? exercises;
  final Exercise? exercise;
  final String? language;
  final int? total;

  ExerciseData({
    this.exercises,
    this.exercise,
    this.language,
    this.total,
  });

  factory ExerciseData.fromJson(Map<String, dynamic> json) {
    return ExerciseData(
      exercises: json['exercises'] != null
          ? (json['exercises'] as List)
              .map((e) => Exercise.fromJson(e as Map<String, dynamic>))
              .toList()
          : null,
      exercise: json['exercise'] != null
          ? Exercise.fromJson(json['exercise'] as Map<String, dynamic>)
          : null,
      language: json['language'] as String?,
      total: json['total'] as int?,
    );
  }
}
