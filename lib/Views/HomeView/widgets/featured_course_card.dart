import 'package:flutter/material.dart';
import 'package:yogiface/shared/custom_cached_network_image.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

class FeaturedCourseCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String thumbnailPath;
  final VoidCallback? onTap;
  final bool isAsset;
  final bool isFavorite;
  final VoidCallback? onFavoriteTap;
  final bool showFavoriteButton;

  const FeaturedCourseCard({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.thumbnailPath,
    this.onTap,
    this.isAsset = false,
    this.isFavorite = false,
    this.onFavoriteTap,
    this.showFavoriteButton = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: AppColors.boxShadowColor,
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Üst Kısım - Büyük Resim
            Stack(
              children: [
                // Ana Resim
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: isAsset
                      ? Image.asset(
                          imagePath,
                          width: double.infinity,
                          fit: BoxFit.contain,
                        )
                      : CustomCachedNetworkImage(
                          imageUrl: imagePath,
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.contain,
                          backgroundImage: AppImages.courseBackground,
                        ),
                ),
                // Favori Butonu
                if (showFavoriteButton)
                  Positioned(
                    top: 12,
                    right: 12,
                    child: GestureDetector(
                      onTap: onFavoriteTap,
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: const Color(0xFFCB9EF6),
                          size: 20,
                        ),
                      ),
                    ),
                  ),
              ],
            ),

            // Alt Kısım - Küçük Kurs Bilgisi
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  // Küçük Thumbnail
                  isAsset
                      ? Image.asset(
                          thumbnailPath,
                          height: 60,
                        )
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: SizedBox(
                            height: 60,
                            width: 60,
                            child: Transform.scale(
                              scale: 2.5,
                              child: CustomCachedNetworkImage(
                                imageUrl: thumbnailPath,
                                fit: BoxFit.contain,
                                height: 60,
                                width: 60,
                                backgroundImage: AppImages.courseBackground,
                              ),
                            ),
                          ),
                        ),
                  const SizedBox(width: 12),
                  // Başlık ve Açıklama
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: AppTextStyles.onboardingBody(
                            16,
                            weight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          description,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyles.onboardingBody(
                            13,
                            height: 1.2,
                            weight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
