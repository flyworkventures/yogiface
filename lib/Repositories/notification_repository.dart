import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yogiface/Models/notification_model.dart';
import 'package:yogiface/Services/dio_service.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/utils/print.dart';

class NotificationRepository {
  NotificationRepository(this.ref);
  final Ref ref;

  DioService get _dioService => ref.read(AllProviders.dioServiceProvider);

  // ============================================
  // Notification Settings
  // ============================================

  /// Get notification settings
  /// GET /api/notifications/settings
  Future<NotificationSettings> getSettings() async {
    try {
      final response = await _dioService.get('notifications/settings');

      if (response.data['success'] == true) {
        return NotificationSettings.fromJson(
          response.data['data'] as Map<String, dynamic>,
        );
      }

      throw Exception(response.data['message'] ?? 'Failed to get settings');
    } catch (e) {
      Print.error('Error fetching notification settings: $e');
      rethrow;
    }
  }

  /// Update notification settings
  /// PUT /api/notifications/settings
  Future<NotificationSettings> updateSettings({
    bool? notificationsEnabled,
    String? reminderInterval,
    bool? quietHoursEnabled,
    String? quietHoursStart,
    String? quietHoursEnd,
    String? timezone,
  }) async {
    try {
      final data = <String, dynamic>{};

      if (notificationsEnabled != null) {
        data['notificationsEnabled'] = notificationsEnabled;
      }
      if (reminderInterval != null) {
        data['reminderInterval'] = reminderInterval;
      }
      if (quietHoursEnabled != null) {
        data['quietHoursEnabled'] = quietHoursEnabled;
      }
      if (quietHoursStart != null) {
        data['quietHoursStart'] = quietHoursStart;
      }
      if (quietHoursEnd != null) {
        data['quietHoursEnd'] = quietHoursEnd;
      }
      if (timezone != null) {
        data['timezone'] = timezone;
      }

      final response = await _dioService.put(
        'notifications/settings',
        data: data,
      );

      if (response.data['success'] == true) {
        return NotificationSettings.fromJson(
          response.data['data'] as Map<String, dynamic>,
        );
      }

      throw Exception(response.data['message'] ?? 'Failed to update settings');
    } catch (e) {
      Print.error('Error updating notification settings: $e');
      rethrow;
    }
  }

  /// Toggle notifications on/off
  /// POST /api/notifications/toggle
  Future<bool> toggleNotifications(bool enabled) async {
    try {
      final response = await _dioService.post(
        'notifications/toggle',
        data: {'enabled': enabled},
      );

      return response.data['success'] == true;
    } catch (e) {
      Print.error('Error toggling notifications: $e');
      rethrow;
    }
  }

  /// Update reminder interval
  /// POST /api/notifications/interval
  Future<bool> updateInterval(String interval) async {
    try {
      final response = await _dioService.post(
        'notifications/interval',
        data: {'interval': interval},
      );

      return response.data['success'] == true;
    } catch (e) {
      Print.error('Error updating reminder interval: $e');
      rethrow;
    }
  }

  // ============================================
  // Notification History
  // ============================================

  /// Get notification history
  /// GET /api/notifications/history?limit=20
  Future<List<NotificationHistory>> getHistory({int limit = 20}) async {
    try {
      final response = await _dioService.get(
        'notifications/history',
        queryParameters: {'limit': limit},
      );

      if (response.data['success'] == true) {
        final List historyJson = response.data['data'] as List;
        return historyJson
            .map((json) =>
                NotificationHistory.fromJson(json as Map<String, dynamic>))
            .toList();
      }

      return [];
    } catch (e) {
      Print.error('Error fetching notification history: $e');
      rethrow;
    }
  }

  /// Mark notification as read
  /// PATCH /api/notifications/:id/read
  Future<bool> markAsRead(int notificationId) async {
    try {
      final response = await _dioService.patch(
        'notifications/$notificationId/read',
      );

      return response.data['success'] == true;
    } catch (e) {
      Print.error('Error marking notification as read: $e');
      rethrow;
    }
  }

  /// Mark all notifications as read
  /// PATCH /api/notifications/read-all
  Future<int> markAllAsRead() async {
    try {
      final response = await _dioService.patch('notifications/read-all');

      if (response.data['success'] == true) {
        return response.data['data']['markedCount'] as int? ?? 0;
      }

      return 0;
    } catch (e) {
      Print.error('Error marking all notifications as read: $e');
      rethrow;
    }
  }

  /// Delete single notification
  /// DELETE /api/notifications/:id
  Future<bool> deleteNotification(int notificationId) async {
    try {
      final response =
          await _dioService.delete('notifications/$notificationId');

      return response.data['success'] == true;
    } catch (e) {
      Print.error('Error deleting notification: $e');
      rethrow;
    }
  }

  /// Delete all notifications
  /// DELETE /api/notifications/all
  Future<int> deleteAllNotifications() async {
    try {
      final response = await _dioService.delete('notifications/all');

      if (response.data['success'] == true) {
        return response.data['data']['deletedCount'] as int? ?? 0;
      }

      return 0;
    } catch (e) {
      Print.error('Error deleting all notifications: $e');
      rethrow;
    }
  }

  /// Get unread notification count
  /// GET /api/notifications/unread-count
  Future<int> getUnreadCount() async {
    try {
      final response = await _dioService.get('notifications/unread-count');

      if (response.data['success'] == true) {
        return response.data['data']['unreadCount'] as int? ?? 0;
      }

      return 0;
    } catch (e) {
      Print.error('Error fetching unread count: $e');
      rethrow;
    }
  }

  // ============================================
  // Exercise Activity
  // ============================================

  /// Get exercise activity stats
  /// GET /api/notifications/activity
  Future<ExerciseActivity> getExerciseActivity() async {
    try {
      final response = await _dioService.get('notifications/activity');

      if (response.data['success'] == true) {
        return ExerciseActivity.fromJson(
          response.data['data'] as Map<String, dynamic>,
        );
      }

      throw Exception(response.data['message'] ?? 'Failed to get activity');
    } catch (e) {
      Print.error('Error fetching exercise activity: $e');
      rethrow;
    }
  }

  /// Record exercise completed
  /// POST /api/notifications/exercise-completed
  Future<ExerciseActivity> exerciseCompleted() async {
    try {
      final response =
          await _dioService.post('notifications/exercise-completed');

      if (response.data['success'] == true) {
        return ExerciseActivity.fromJson(
          response.data['data'] as Map<String, dynamic>,
        );
      }

      throw Exception(response.data['message'] ?? 'Failed to record exercise');
    } catch (e) {
      Print.error('Error recording exercise completion: $e');
      rethrow;
    }
  }

  // ============================================
  // Intervals
  // ============================================

  /// Get available notification intervals
  /// GET /api/notifications/intervals
  Future<List<NotificationInterval>> getAvailableIntervals() async {
    try {
      final response = await _dioService.get('notifications/intervals');

      if (response.data['success'] == true) {
        final List intervalsJson = response.data['data'] as List;
        return intervalsJson
            .map((json) =>
                NotificationInterval.fromJson(json as Map<String, dynamic>))
            .toList();
      }

      return [];
    } catch (e) {
      Print.error('Error fetching notification intervals: $e');
      rethrow;
    }
  }

  // ============================================
  // Test (Development Only)
  // ============================================

  /// Send test notification (development only)
  /// POST /api/notifications/test
  Future<bool> sendTestNotification({String type = 'reminder_4h'}) async {
    try {
      final response = await _dioService.post(
        'notifications/test',
        data: {'type': type},
      );

      return response.data['success'] == true;
    } catch (e) {
      Print.error('Error sending test notification: $e');
      rethrow;
    }
  }
}
