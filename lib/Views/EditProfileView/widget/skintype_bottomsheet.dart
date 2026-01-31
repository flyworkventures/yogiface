import 'package:flutter/material.dart';
import 'package:yogiface/Views/EditProfileView/widget/skintype_card.dart';
import 'package:yogiface/shared/custom_button.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_paddings.dart';

class SkintypeBottomsheet extends StatelessWidget {
  const SkintypeBottomsheet({
    super.key, // ignore: unused_element_parameter
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: AppSpacing.xl),
                SkintypeCard(
                  skintype: 'Normal',
                  imagePath: 'assets/icons/editleaf.png',
                ),
                SkintypeCard(
                  skintype: 'Dry',
                  imagePath: 'assets/icons/dry.png',
                ),
                SkintypeCard(
                  skintype: 'Oily',
                  imagePath: 'assets/icons/oily.png',
                ),
                SkintypeCard(
                  skintype: 'Combination',
                  imagePath: 'assets/icons/combination.png',
                ),
                SkintypeCard(
                  skintype: 'Sensitive',
                  imagePath: 'assets/icons/sensitive.png',
                ),
                const SizedBox(height: AppSpacing.xl),
                CustomButton(
                  label: 'Kaydet',
                  fullWidth: true,
                  size: CustomButtonSize.large,
                  foregroundColor: AppColors.onboardingButtonGradientStart,
                  backgroundColor: AppColors.onboardingButtonGradientStart,
                  labelColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                const SizedBox(height: AppSpacing.xxl),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
