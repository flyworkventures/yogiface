import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yogiface/Models/notification_model.dart';
import 'package:yogiface/Riverpod/Providers/notification_provider.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class NotificationSettingsView extends HookConsumerWidget {
  const NotificationSettingsView({super.key});

  void _showIntervalBottomSheet(
    BuildContext context,
    WidgetRef ref,
    List<NotificationInterval> intervals,
    String currentInterval,
  ) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Reminder Interval',
                style: AppTextStyles.latoBody(
                  20,
                  weight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 16),
              ...intervals.map((interval) {
                final isSelected = interval.value == currentInterval;
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(vertical: 8),
                  leading: Radio<String>(
                    value: interval.value,
                    groupValue: currentInterval,
                    onChanged: (value) async {
                      if (value != null) {
                        await ref
                            .read(notificationSettingsProvider.notifier)
                            .updateInterval(value);
                        Navigator.pop(context);
                      }
                    },
                  ),
                  title: Text(
                    interval.name['en'] ?? interval.value,
                    style: AppTextStyles.latoBody(
                      16,
                      weight: isSelected ? FontWeight.w600 : FontWeight.w400,
                    ),
                  ),
                  subtitle: Text(
                    interval.description['en'] ?? '',
                    style: AppTextStyles.latoBody(
                      14,
                      weight: FontWeight.w300,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  onTap: () async {
                    await ref
                        .read(notificationSettingsProvider.notifier)
                        .updateInterval(interval.value);
                    Navigator.pop(context);
                  },
                );
              }),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingsAsync = ref.watch(notificationSettingsProvider);
    final intervalsAsync = ref.watch(availableIntervalsProvider);
    final activityAsync = ref.watch(exerciseActivityProvider);

    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: const Text('Notification Settings'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: settingsAsync.when(
        data: (settings) {
          if (settings == null) {
            return const Center(
              child: Text('No settings available'),
            );
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Exercise Activity Stats
                if (activityAsync.hasValue && activityAsync.value != null)
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your Progress',
                          style: AppTextStyles.latoBody(
                            18,
                            weight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildStatItem(
                              '🔥',
                              '${activityAsync.value!.currentStreak}',
                              'Current Streak',
                            ),
                            _buildStatItem(
                              '🏆',
                              '${activityAsync.value!.longestStreak}',
                              'Longest Streak',
                            ),
                            _buildStatItem(
                              '✅',
                              '${activityAsync.value!.totalExercises}',
                              'Total Exercises',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                const SizedBox(height: 20),

                // Settings Section
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Master Toggle
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Enable Notifications',
                                  style: AppTextStyles.latoBody(
                                    16,
                                    weight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Receive exercise reminders',
                                  style: AppTextStyles.latoBody(
                                    14,
                                    weight: FontWeight.w300,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Switch(
                            value: settings.notificationsEnabled,
                            onChanged: (value) async {
                              await ref
                                  .read(notificationSettingsProvider.notifier)
                                  .toggleNotifications(value);
                            },
                          ),
                        ],
                      ),

                      if (settings.notificationsEnabled) ...[
                        const Divider(height: 32),

                        // Reminder Interval
                        InkWell(
                          onTap: () {
                            intervalsAsync.whenData((intervals) {
                              _showIntervalBottomSheet(
                                context,
                                ref,
                                intervals,
                                settings.reminderInterval,
                              );
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Reminder Interval',
                                        style: AppTextStyles.latoBody(
                                          16,
                                          weight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        _getIntervalDisplayName(
                                          settings.reminderInterval,
                                        ),
                                        style: AppTextStyles.latoBody(
                                          14,
                                          weight: FontWeight.w300,
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Icon(Icons.chevron_right),
                              ],
                            ),
                          ),
                        ),

                        const Divider(height: 32),

                        // Quiet Hours
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Quiet Hours',
                                    style: AppTextStyles.latoBody(
                                      16,
                                      weight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    'No notifications during quiet hours',
                                    style: AppTextStyles.latoBody(
                                      14,
                                      weight: FontWeight.w300,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Switch(
                              value: settings.quietHoursEnabled,
                              onChanged: (value) async {
                                await ref
                                    .read(notificationSettingsProvider.notifier)
                                    .updateSettings(quietHoursEnabled: value);
                              },
                            ),
                          ],
                        ),

                        if (settings.quietHoursEnabled) ...[
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              Expanded(
                                child: _buildTimeButton(
                                  context,
                                  ref,
                                  'Start',
                                  settings.quietHoursStart ?? '22:00',
                                  isStart: true,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: _buildTimeButton(
                                  context,
                                  ref,
                                  'End',
                                  settings.quietHoursEnd ?? '08:00',
                                  isStart: false,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ],
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // Last Notification Info
                if (settings.lastNotificationAt != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Last notification sent: ${_formatDateTime(settings.lastNotificationAt!)}',
                      style: AppTextStyles.latoBody(
                        12,
                        weight: FontWeight.w300,
                        color: Colors.grey.shade600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 48, color: Colors.red),
              const SizedBox(height: 16),
              Text(
                'Error loading settings',
                style: AppTextStyles.latoBody(16),
              ),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () {
                  ref.read(notificationSettingsProvider.notifier).refresh();
                },
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatItem(String emoji, String value, String label) {
    return Column(
      children: [
        Text(
          emoji,
          style: const TextStyle(fontSize: 32),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: AppTextStyles.latoBody(
            20,
            weight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: AppTextStyles.latoBody(
            12,
            weight: FontWeight.w400,
            color: Colors.grey.shade600,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildTimeButton(
      BuildContext context, WidgetRef ref, String label, String time,
      {required bool isStart}) {
    return InkWell(
      onTap: () async {
        final TimeOfDay? picked = await showTimePicker(
          context: context,
          initialTime: TimeOfDay(
            hour: int.parse(time.split(':')[0]),
            minute: int.parse(time.split(':')[1]),
          ),
        );

        if (picked != null) {
          final formattedTime =
              '${picked.hour.toString().padLeft(2, '0')}:${picked.minute.toString().padLeft(2, '0')}';

          await ref.read(notificationSettingsProvider.notifier).updateSettings(
                quietHoursStart: isStart ? formattedTime : null,
                quietHoursEnd: !isStart ? formattedTime : null,
              );
        }
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: AppTextStyles.latoBody(
                12,
                weight: FontWeight.w500,
                color: Colors.grey.shade600,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              time,
              style: AppTextStyles.latoBody(
                16,
                weight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getIntervalDisplayName(String value) {
    switch (value) {
      case '2h':
        return 'Every 2 hours';
      case '4h':
        return 'Every 4 hours';
      case '8h':
        return 'Every 8 hours';
      case '24h':
        return 'Once a day';
      case 'off':
        return 'Off';
      default:
        return value;
    }
  }

  String _formatDateTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inDays > 0) {
      return '${difference.inDays} day${difference.inDays > 1 ? 's' : ''} ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} hour${difference.inHours > 1 ? 's' : ''} ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} minute${difference.inMinutes > 1 ? 's' : ''} ago';
    } else {
      return 'Just now';
    }
  }
}
