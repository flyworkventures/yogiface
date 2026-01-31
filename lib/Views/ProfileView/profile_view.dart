import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/utils/app_assets.dart';

import 'widgets/index.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  bool notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(1.0, -1.0), // top-right corner
          radius: 1.2,
          colors: [
            Color(0xFFE8A7F2), // pink
            Colors.white,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Profile',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(AppPaddings.large ?? 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile Header
                Center(
                  child: ProfileHeader(
                    userName: 'Melissa Yılmaz',
                    versionText: 'Free Version',
                    profileImage: const AssetImage(AppImages.profilephoto),
                    onTap: () {},
                  ),
                ),
                const SizedBox(height: 32),

                // Hesap Ayarları Section
                ProfileSection(
                  title: 'HESAP AYARLARI',
                  children: [
                    ProfileMenuItem(
                      icon: AppIcons.useredit,
                      title: 'Profil Düzenle',
                      iconBackgroundColor: const Color(0xFF9B59B6),
                      onTap: () {
                        Navigator.pushNamed(context, '/edit-profile');
                      },
                    ),
                    const SizedBox(height: 12),
                    ProfileMenuItem(
                      icon: AppIcons.notificationpurple,
                      title: 'Bildirimler',
                      iconBackgroundColor: const Color(0xFF9B59B6),
                      isToggled: notificationsEnabled,
                      onToggleChanged: (value) {
                        setState(() {
                          notificationsEnabled = value;
                        });
                      },
                    ),
                    const SizedBox(height: 12),
                    ProfileMenuItem(
                      icon: AppIcons.premiumaward,
                      title: 'Premium',
                      iconBackgroundColor: const Color(0xFFFFB300),
                      isHighlighted: true,
                      onTap: () {
                        // TODO: Navigate to premium
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 28),

                // Destek & Diğer Section
                ProfileSection(
                  title: 'DESTEK & DİĞER',
                  children: [
                    ProfileMenuItem(
                      icon: AppIcons.heart2,
                      title: 'Favori Egzersizler',
                      iconBackgroundColor: const Color(0xFFE91E63),
                      onTap: () {
                        Navigator.pushNamed(context, '/favorite-exercises');
                      },
                    ),
                    const SizedBox(height: 12),
                    ProfileMenuItem(
                      icon: AppIcons.flag,
                      title: 'Uygulama Dili',
                      iconBackgroundColor: const Color(0xFF9B59B6),
                      onTap: () {
                        Navigator.pushNamed(context, '/language');
                      },
                    ),
                    const SizedBox(height: 12),
                    ProfileMenuItem(
                      icon: AppIcons.clipgroup,
                      title: 'Arkadaşlarınla Paylaş',
                      iconBackgroundColor: const Color(0xFF26A69A),
                      onTap: () {
                        Navigator.pushNamed(context, '/share-friends');
                      },
                    ),
                    const SizedBox(height: 12),
                    ProfileMenuItem(
                      icon: AppIcons.qr,
                      title: 'Davet Kodu Gir',
                      iconBackgroundColor: const Color(0xFF9B59B6),
                      onTap: () {
                        Navigator.pushNamed(context, '/invitation-code');
                      },
                    ),
                    const SizedBox(height: 12),
                    ProfileMenuItem(
                      icon: AppIcons.like,
                      title: 'Bizi Değerlendir',
                      iconBackgroundColor: const Color(0xFFFFB300),
                      onTap: () {
                        // TODO: Rate app
                      },
                    ),
                    const SizedBox(height: 12),
                    ProfileMenuItem(
                      icon: AppIcons.questionmark,
                      title: 'SSS',
                      iconBackgroundColor: const Color(0xFF9B59B6),
                      onTap: () {
                        Navigator.pushNamed(context, '/faq');
                      },
                    ),
                    const SizedBox(height: 12),
                    ProfileMenuItem(
                      icon: AppIcons.logout,
                      title: 'Çıkış Yap',
                      isRed: true,
                      iconBackgroundColor: const Color(0xFFE91E63),
                      onTap: () {
                        showDialog(
                          context: context,
                          barrierColor: Colors.black.withValues(alpha: 0.3),
                          builder: (context) => BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: const LogoutDialog(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
