import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yogiface/Views/EditProfileView/widget/skintype_card.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/shared/custom_button.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_paddings.dart';

class SkintypeBottomsheet extends HookWidget {
  final String? initialValue;
  final Function(String) onSelected;

  const SkintypeBottomsheet({
    super.key,
    this.initialValue,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final selectedSkinType = useState<String>(initialValue ?? 'normal');

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
                  isSelected: selectedSkinType.value == 'normal',
                  onTap: () => selectedSkinType.value = 'normal',
                ),
                SkintypeCard(
                  skintype: 'Dry',
                  imagePath: 'assets/icons/dry.png',
                  isSelected: selectedSkinType.value == 'dry',
                  onTap: () => selectedSkinType.value = 'dry',
                ),
                SkintypeCard(
                  skintype: 'Oily',
                  imagePath: 'assets/icons/oily.png',
                  isSelected: selectedSkinType.value == 'oily',
                  onTap: () => selectedSkinType.value = 'oily',
                ),
                SkintypeCard(
                  skintype: 'Combination',
                  imagePath: 'assets/icons/combination.png',
                  isSelected: selectedSkinType.value == 'combination',
                  onTap: () => selectedSkinType.value = 'combination',
                ),
                SkintypeCard(
                  skintype: 'Sensitive',
                  imagePath: 'assets/icons/sensitive.png',
                  isSelected: selectedSkinType.value == 'sensitive',
                  onTap: () => selectedSkinType.value = 'sensitive',
                ),
                const SizedBox(height: AppSpacing.xl),
                CustomButton(
                  label: context.t.editProfile.save,
                  fullWidth: true,
                  size: CustomButtonSize.large,
                  foregroundColor: AppColors.onboardingButtonGradientStart,
                  backgroundColor: AppColors.onboardingButtonGradientStart,
                  labelColor: Colors.white,
                  onPressed: () {
                    onSelected(selectedSkinType.value);
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
