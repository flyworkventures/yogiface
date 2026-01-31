import 'package:flutter/material.dart';
import 'package:yogiface/shared/custom_button.dart';
import 'package:yogiface/shared/custom_form_text_field.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

/// {@template invitation_code}
/// InvitationCode widget.
/// {@endtemplate}
class InvitationCode extends StatelessWidget {
  /// {@macro invitation_code}
  const InvitationCode({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: colorScheme.onSurface),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Davet Kodu Gir',
          style: AppTextStyles.latoBody(
            16,
            weight: FontWeight.w600,
          ),
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
          child: Column(
            children: [
              // const Spacer(flex: 1),
              const SizedBox(height: AppSpacing.xxxl),
              Text(
                'Huzura Ortak Ol',
                style: AppTextStyles.latoBody(
                  24,
                  weight: FontWeight.w700,
                  height: 1.4,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSpacing.md),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: AppTextStyles.latoBody(
                    16,
                    height: 1.4,
                  ),
                  children: [
                    const TextSpan(
                        text:
                            'Arkadaşınızdan aldığınız davet kodunu.\nİlgili alana yazarak '),
                    TextSpan(
                      text: '2 günlük Premium',
                      style: AppTextStyles.latoBody(
                        14,
                        weight: FontWeight.w700,
                        height: 1,
                      ),
                    ),
                    const TextSpan(
                        text: '\navantajlarından yararlanabilirsiniz.'),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.xxl),
              CustomFormTextField(
                hintText: '',
                fillColor: AppColors.profileTextFieldColor,
                borderRadius: 15,
                borderColor: AppColors.profileTextFieldColor,
                prefixIcon: Image.asset(
                  AppIcons.qr,
                  color: AppColors.profileTitle,
                ),
                hintStyle: AppTextStyles.latoBody(
                  14,
                ),
              ),
              const Spacer(flex: 3),
              CustomButton(
                label: 'Gönder',
                fullWidth: true,
                size: CustomButtonSize.large,
                backgroundColor: AppColors.onboardingButtonGradientStart,
                foregroundColor: Colors.white,
                onPressed: () {
                  // TODO: Handle submit
                },
              ),
              const SizedBox(height: AppSpacing.xxl),
            ],
          ),
        ),
      ),
    );
  }
}
