import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yogiface/utils/app_assets.dart';

class BottomNavBarWidget extends HookWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBarWidget({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: currentIndex,
      height: 65,
      maxWidth: double.infinity,
      backgroundColor: Colors.transparent,
      color: Colors.white,
      buttonBackgroundColor: Colors.transparent,
      animationDuration: const Duration(milliseconds: 300),
      animationCurve: Curves.easeInOut,
      items: [
        _buildSideItem(
          iconAsset: AppIcons.menustars,
          label: 'Courses',
          isSelected: currentIndex == 0,
        ),
        _buildCenterItem(),
        _buildSideItem(
          iconAsset: AppIcons.menuperson,
          label: 'Profile',
          isSelected: currentIndex == 2,
        ),
      ],
      onTap: onTap,
    );
  }

  // Ortadaki Home butonu - gradient daire içinde
  Widget _buildCenterItem() {
    return Transform.translate(
      offset: const Offset(0, 12),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFD8A8E8), // Açık mor/pembe
              Color(0xFFB67CDC), // Orta mor
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFFB67CDC).withValues(alpha: 0.3),
              blurRadius: 8,
              spreadRadius: 1,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Image.asset(
          AppIcons.menuhome,
          width: 28,
          height: 28,
          color: Colors.white,
        ),
      ),
    );
  }

  // Yan butonlar - ikon ve yazı yanyana
  Widget _buildSideItem({
    required String iconAsset,
    required String label,
    required bool isSelected,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          iconAsset,
          // width: 20,
          // height: 20,
          color: const Color(0xFF2D2D2D),
        ),
        const SizedBox(width: 6),
        if (!isSelected)
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF2D2D2D),
            ),
          ),
      ],
    );
  }
}
