import 'package:flutter/material.dart';
import 'package:yogiface/Views/NotificationsView/widgets/deletebottomsheet.dart';
import 'package:yogiface/Views/NotificationsView/widgets/notifications_card.dart';
import 'package:yogiface/Views/NotificationsView/widgets/premium_card.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({super.key});

  @override
  State<NotificationsView> createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
  late List<Map<String, String>> notifications;

  @override
  void initState() {
    super.initState();
    notifications = [
      {
        'title': t.notifications.sample1Title,
        'description': t.notifications.sample1Description,
        'time': t.notifications.sample1Time,
        'icon': AppIcons.leaf,
      },
      {
        'title': t.notifications.sample2Title,
        'description': t.notifications.sample2Description,
        'time': t.notifications.sample2Time,
        'icon': AppIcons.person2,
      },
      {
        'title': t.notifications.sample3Title,
        'description': t.notifications.sample3Description,
        'time': t.notifications.sample3Time,
        'icon': AppIcons.trophy,
      },
    ];
  }

  void _deleteAllNotifications() {
    setState(() {
      notifications.clear();
    });
  }

  void _deleteNotification(int index) {
    setState(() {
      notifications.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text(t.notifications.title),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          if (notifications.isNotEmpty)
            GestureDetector(
              onTap: () {
                DeleteNotificationsBottomSheet.show(
                  context,
                  onDelete: _deleteAllNotifications,
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
      body: notifications.isEmpty
          ? _buildEmptyState()
          : _buildNotificationsList(),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Gri daire içinde bildirim ikonu
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

            // Başlık
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

  Widget _buildNotificationsList() {
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
                  title: notification['title']!,
                  description: notification['description']!,
                  time: notification['time']!,
                  imagePath: notification['icon']!,
                  onClose: () => _deleteNotification(index),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
