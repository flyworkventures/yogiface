import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/shared/custom_button.dart';
import 'package:yogiface/shared/custom_form_text_field.dart';
import 'package:yogiface/shared/custom_overlay.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';
import 'package:yogiface/utils/print.dart';

/// {@template invitation_code}
/// InvitationCode widget for applying referral codes.
/// {@endtemplate}
class InvitationCode extends HookConsumerWidget {
  /// {@macro invitation_code}
  const InvitationCode({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final referralRepository =
        ref.watch(AllProviders.referralRepositoryProvider);

    // Form state
    final codeController = useTextEditingController();
    final isLoading = useState(false);

    // Handle referral code submission
    Future<void> handleSubmit() async {
      final code = codeController.text.trim();

      // Client-side validation
      if (code.isEmpty) {
        CustomOverlay.show(
          context,
          title: context.t.referralCode.errors.missingCode.title,
          message: context.t.referralCode.errors.missingCode.message,
          icon: AppIcons.forbidden,
          type: OverlayType.error,
        );
        return;
      }

      if (code.length != 8) {
        CustomOverlay.show(
          context,
          title: context.t.referralCode.errors.invalidFormat.title,
          message: context.t.referralCode.errors.invalidFormat.message,
          icon: AppIcons.forbidden,
          type: OverlayType.error,
        );
        return;
      }

      isLoading.value = true;

      try {
        final response = await referralRepository.applyReferralCode(code);

        if (response.statusCode == 200 && response.data['success'] == true) {
          // Success
          CustomOverlay.show(
            context,
            title: context.t.referralCode.success.title,
            message: context.t.referralCode.success.message,
            icon: AppIcons.tick,
            type: OverlayType.success,
            duration: const Duration(seconds: 4),
          );

          // Clear the input field
          codeController.clear();

          // Optional: Navigate back after showing success
          Future.delayed(const Duration(seconds: 2), () {
            if (context.mounted) {
              Navigator.of(context).pop();
            }
          });
        }
      } on DioException catch (e) {
        Print.error('[InvitationCode] Error applying referral code: $e');

        // Parse backend error response
        String title = context.t.referralCode.errors.genericError.title;
        String message = context.t.referralCode.errors.genericError.message;

        if (e.response?.data != null) {
          final errorData = e.response!.data;
          final errorType = errorData['error']?['type'] as String?;

          // Map backend error types to localized messages
          switch (errorType) {
            case 'MISSING_REFERRAL_CODE':
              title = context.t.referralCode.errors.missingCode.title;
              message = context.t.referralCode.errors.missingCode.message;
              break;
            case 'INVALID_CODE_FORMAT':
              title = context.t.referralCode.errors.invalidFormat.title;
              message = context.t.referralCode.errors.invalidFormat.message;
              break;
            case 'ALREADY_USED_CODE':
              title = context.t.referralCode.errors.alreadyUsed.title;
              message = context.t.referralCode.errors.alreadyUsed.message;
              break;
            case 'SELF_REFERRAL_FORBIDDEN':
              title = context.t.referralCode.errors.selfReferral.title;
              message = context.t.referralCode.errors.selfReferral.message;
              break;
            case 'CODE_NOT_FOUND':
              title = context.t.referralCode.errors.codeNotFound.title;
              message = context.t.referralCode.errors.codeNotFound.message;
              break;
            case 'USER_NOT_FOUND':
            default:
              // Use generic error for unknown error types
              title = context.t.referralCode.errors.genericError.title;
              message = errorData['message'] as String? ??
                  context.t.referralCode.errors.genericError.message;
              break;
          }
        }

        CustomOverlay.show(
          context,
          title: title,
          message: message,
          icon: AppIcons.forbidden,
          type: OverlayType.error,
          duration: const Duration(seconds: 4),
        );
      } catch (e) {
        Print.error('[InvitationCode] Unexpected error: $e');

        CustomOverlay.show(
          context,
          title: context.t.referralCode.errors.genericError.title,
          message: context.t.referralCode.errors.genericError.message,
          icon: AppIcons.forbidden,
          type: OverlayType.error,
        );
      } finally {
        isLoading.value = false;
      }
    }

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
          context.t.enterInvitationCode,
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
              const SizedBox(height: AppSpacing.xxxl),
              Text(
                context.t.bePartOfPeace,
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
                    TextSpan(text: context.t.inviteFriends),
                    TextSpan(
                      text: ' ${context.t.twoDaysPremium} ',
                      style: AppTextStyles.latoBody(
                        16,
                        weight: FontWeight.w700,
                        height: 1,
                      ),
                    ),
                    TextSpan(text: context.t.advantage),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.xxl),
              CustomFormTextField(
                controller: codeController,
                hintText: context.t.referralCode.inputPlaceholder,
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
                textCapitalization: TextCapitalization.characters,
                maxLength: 8,
                enabled: !isLoading.value,
              ),
              const Spacer(flex: 3),
              CustomButton(
                label: isLoading.value
                    ? context.t.referralCode.applying
                    : context.t.send,
                fullWidth: true,
                size: CustomButtonSize.large,
                backgroundColor: AppColors.onboardingButtonGradientStart,
                foregroundColor: Colors.white,
                onPressed: isLoading.value ? null : handleSubmit,
              ),
              const SizedBox(height: AppSpacing.xxl),
            ],
          ),
        ),
      ),
    );
  }
}
