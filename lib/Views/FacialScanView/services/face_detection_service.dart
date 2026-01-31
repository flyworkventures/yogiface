import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';

class FaceDetectionResult {
  final bool hasFace;
  final int faceCount;
  final double? smilingProbability;
  final double? leftEyeOpenProbability;
  final double? rightEyeOpenProbability;
  final double? headEulerAngleY; // Yaw (left/right)
  final double? headEulerAngleZ; // Roll

  FaceDetectionResult({
    required this.hasFace,
    required this.faceCount,
    this.smilingProbability,
    this.leftEyeOpenProbability,
    this.rightEyeOpenProbability,
    this.headEulerAngleY,
    this.headEulerAngleZ,
  });
}

class FaceDetectionService {
  static FaceDetectionService? _instance;
  FaceDetector? _faceDetector;

  FaceDetectionService._();

  static FaceDetectionService get instance {
    _instance ??= FaceDetectionService._();
    return _instance!;
  }

  FaceDetector get faceDetector {
    _faceDetector ??= FaceDetector(
      options: FaceDetectorOptions(
        enableClassification: true,
        enableLandmarks: true,
        enableTracking: false,
        performanceMode: FaceDetectorMode.accurate,
      ),
    );
    return _faceDetector!;
  }

  Future<bool> hasFace(String imagePath) async {
    try {
      final inputImage = InputImage.fromFilePath(imagePath);
      final faces = await faceDetector.processImage(inputImage);
      return faces.isNotEmpty;
    } catch (e) {
      return false;
    }
  }

  Future<FaceDetectionResult> analyzeFace(String imagePath) async {
    try {
      final inputImage = InputImage.fromFilePath(imagePath);
      final faces = await faceDetector.processImage(inputImage);

      if (faces.isEmpty) {
        return FaceDetectionResult(hasFace: false, faceCount: 0);
      }

      final face = faces.first;
      return FaceDetectionResult(
        hasFace: true,
        faceCount: faces.length,
        smilingProbability: face.smilingProbability,
        leftEyeOpenProbability: face.leftEyeOpenProbability,
        rightEyeOpenProbability: face.rightEyeOpenProbability,
        headEulerAngleY: face.headEulerAngleY,
        headEulerAngleZ: face.headEulerAngleZ,
      );
    } catch (e) {
      return FaceDetectionResult(hasFace: false, faceCount: 0);
    }
  }

  Future<bool> validateFacePosition(
    String imagePath,
    FacePosition expectedPosition,
  ) async {
    final result = await analyzeFace(imagePath);

    if (!result.hasFace) return false;

    final yaw = result.headEulerAngleY ?? 0;

    switch (expectedPosition) {
      case FacePosition.front:
        // Face should be looking straight (yaw between -15 and 15)
        return yaw.abs() < 15;
      case FacePosition.left:
        // Face should be turned left (yaw > 15)
        return yaw > 15;
      case FacePosition.right:
        // Face should be turned right (yaw < -15)
        return yaw < -15;
    }
  }

  void dispose() {
    _faceDetector?.close();
    _faceDetector = null;
  }
}

enum FacePosition {
  front,
  left,
  right,
}
