import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yogiface/gen/strings.g.dart';
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
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 0, 5, 10),
      height: 90, // Increased height to accommodate the floating button
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          // Background Image
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 75, // Increased height for the background bar
              child: Stack(
                children: [
                  // The image itself
                  Positioned.fill(
                    child: Image.asset(
                      AppIcons.bottomNavBar,
                      fit: BoxFit.fill,
                    ),
                  ),
                  // Nav items on top of the image
                  Positioned(
                    top: 12,
                    left: 24,
                    right: 24,
                    bottom: 24, // Add some padding from the absolute bottom
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        _buildNavItem(
                          index: 0,
                          icon: AppIcons.menustars,
                          label: context.t.courses.title,
                          isSelected: currentIndex == 0,
                        ),
                        const SizedBox(width: 48), // Reduced space for center
                        _buildNavItem(
                          index: 2,
                          icon: AppIcons.menuperson,
                          label: context.t.profile.title, //TODO:Check here
                          isSelected: currentIndex == 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Center Floating Button
          Positioned(
            top: 0, // Floats at the top of the container
            child: GestureDetector(
              onTap: () => onTap(1),
              child: Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: const LinearGradient(
                    colors: [Color(0xFFE5B2FA), Color(0xFFC68BF0)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFFC68BF0).withValues(alpha: 0.5),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Center(
                  child: Image.asset(
                    AppIcons.menuhome,
                    width: 24,
                    height: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required int index,
    required String icon,
    required String label,
    required bool isSelected,
  }) {
    return GestureDetector(
      onTap: () => onTap(index),
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            Image.asset(
              icon,
              width: 24,
              height: 24,
              color: const Color(0xFF333333),
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: const TextStyle(
                color: Color(0xFF333333),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
