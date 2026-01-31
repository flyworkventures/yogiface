import 'package:flutter/material.dart';
import 'package:yogiface/Views/NotificationsView/widgets/deletebottomsheet.dart';
import 'package:yogiface/Views/NotificationsView/widgets/notifications_card.dart';
import 'package:yogiface/Views/NotificationsView/widgets/premium_card.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({super.key});

  @override
  State<NotificationsView> createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
  List<Map<String, String>> notifications = [
    {
      'title': 'Your daily meditation is ready!',
      'description': 'Find your calm for the day',
      'time': '15 min ago',
      'icon': AppIcons.leaf,
    },
    {
      'title': 'New Exercise: Ocean Breath',
      'description': 'A new breathing technique has been added',
      'time': '1 hour ago',
      'icon': AppIcons.person2,
    },
    {
      'title': "You've hit a 7-day streak!",
      'description': 'Keep up the amazing work on your well-being',
      'time': 'Yesterday',
      'icon': AppIcons.trophy,
    },
  ];

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
        title: const Text('Notifications'),
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
              'Henüz bildirim yok',
              textAlign: TextAlign.center,
              style: AppTextStyles.onboardingBody(
                20,
                weight: FontWeight.w600,
                height: 1.3,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Öğrenme yolculuğunla ilgili önemli bir gelişme olduğunda sana haber vereceğiz.',
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
            title: 'Premium avantajlarını\nkaçırma!',
            description: 'Premium abonesi olarak fırsatları yakala.',
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
