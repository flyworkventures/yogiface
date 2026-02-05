import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yogiface/Views/EditProfileView/widget/skintypeitem.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_paddings.dart';

/// {@template skintype_card}
/// SkintypeCard widget.
/// {@endtemplate}
class SkintypeCard extends StatelessWidget {
  /// {@macro skintype_card}
  const SkintypeCard({
    this.skintype,
    this.imagePath,
    this.isSelected = false,
    this.onTap,
    super.key, // ignore: unused_element_parameter
  });
  final String? skintype;
  final String? imagePath;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SkinTypeItem(
          icon: imagePath!,
          title: skintype!,
          backgroundColor: AppColors.profileTextFieldColor,
          iconBackgroundColor: AppColors.profileTextFieldColor,
          isSelected: isSelected,
          onTap: onTap,
        ),
        const SizedBox(height: AppSpacing.xl),
      ],
    );
  }
}
