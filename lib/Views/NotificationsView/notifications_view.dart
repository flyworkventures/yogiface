import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:yogiface/Models/notification_model.dart';
import 'package:yogiface/Riverpod/Providers/notification_provider.dart';
import 'package:yogiface/Views/NotificationsView/widgets/deletebottomsheet.dart';
import 'package:yogiface/Views/NotificationsView/widgets/notifications_card.dart';
import 'package:yogiface/Views/NotificationsView/widgets/premium_card.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

class NotificationsView extends ConsumerStatefulWidget {
  const NotificationsView({super.key});

  @override
  ConsumerState<NotificationsView> createState() => _NotificationsViewState();
}

class _NotificationsViewState extends ConsumerState<NotificationsView> {
  @override
  void initState() {
    super.initState();
    // Mark all notifications as read when view opens
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(notificationHistoryProvider.notifier).markAllAsRead();
    });
  }

  String _getRelativeTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inDays > 7) {
      return DateFormat('MMM d, y').format(dateTime);
    } else if (difference.inDays > 0) {
      return '${difference.inDays} day${difference.inDays > 1 ? 's' : ''} ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} hour${difference.inHours > 1 ? 's' : ''} ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} minute${difference.inMinutes > 1 ? 's' : ''} ago';
    } else {
      return 'Just now';
    }
  }

  String _getNotificationIcon(String type) {
    // Map notification types to icons
    if (type.contains('reminder')) {
      return AppIcons.leaf;
    } else if (type.contains('streak')) {
      return AppIcons.trophy;
    } else if (type.contains('achievement')) {
      return AppIcons.trophy;
    } else {
      return AppIcons.person2;
    }
  }

  @override
  Widget build(BuildContext context) {
    final notificationHistoryAsync = ref.watch(notificationHistoryProvider);
    final unreadCountAsync = ref.watch(unreadCountProvider);

    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Row(
          children: [
            Text(t.notifications.title),
            if (unreadCountAsync.hasValue && (unreadCountAsync.value ?? 0) > 0)
              Container(
                margin: const EdgeInsets.only(left: 8),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  '${unreadCountAsync.value}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          if (notificationHistoryAsync.hasValue &&
              (notificationHistoryAsync.value?.isNotEmpty ?? false))
            GestureDetector(
              onTap: () {
                DeleteNotificationsBottomSheet.show(
                  context,
                  onDelete: () async {
                    await ref
                        .read(notificationHistoryProvider.notifier)
                        .deleteAll();
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Image.asset(
                  AppIcons.trash,
                  width: 24,
                  height: 24,
                ),
              ),
            ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(notificationHistoryProvider.notifier).refresh();
          ref.invalidate(unreadCountProvider);
        },
        child: notificationHistoryAsync.when(
          data: (notifications) {
            if (notifications.isEmpty) {
              return _buildEmptyState();
            }
            return _buildNotificationsList(context, notifications);
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline, size: 48, color: Colors.red),
                const SizedBox(height: 16),
                Text(
                  'Error loading notifications',
                  style: AppTextStyles.latoBody(16),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {
                    ref.read(notificationHistoryProvider.notifier).refresh();
                  },
                  child: const Text('Retry'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 115,
              height: 115,
              decoration: const BoxDecoration(
                color: Color(0xFFF5F5F5),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  AppIcons.nonotifications,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              t.notifications.emptyTitle,
              textAlign: TextAlign.center,
              style: AppTextStyles.onboardingBody(
                20,
                weight: FontWeight.w600,
                height: 1.3,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              t.notifications.emptyDescription,
              textAlign: TextAlign.center,
              style: AppTextStyles.onboardingBody(
                14,
                weight: FontWeight.w400,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationsList(
    BuildContext context,
    List<NotificationHistory> notifications,
  ) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          PremiumBannerCard(
            title: t.notifications.premiumBannerTitle,
            description: t.notifications.premiumBannerDescription,
            iconPath: AppIcons.premiumaward,
            onTap: () {
              // Premium sayfasına yönlendir
            },
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.separated(
              itemCount: notifications.length,
              separatorBuilder: (context, index) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final notification = notifications[index];
                return NotificationsCard(
                  title: notification.title,
                  description: notification.message,
                  time: _getRelativeTime(notification.sentAt),
                  imagePath: _getNotificationIcon(notification.type),
                  isRead: notification.isRead,
                  onTap: () async {
                    if (!notification.isRead) {
                      await ref
                          .read(notificationHistoryProvider.notifier)
                          .markAsRead(notification.id);
                    }
                  },
                  onClose: () async {
                    await ref
                        .read(notificationHistoryProvider.notifier)
                        .deleteNotification(notification.id);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
