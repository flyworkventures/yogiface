import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:purchases_ui_flutter/purchases_ui_flutter.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/shared/custom_button.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

import '../../../theme/app_colors.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';

class PremiumPlanWidget extends ConsumerStatefulWidget {
  const PremiumPlanWidget({super.key});

  @override
  ConsumerState<PremiumPlanWidget> createState() => _PremiumPlanWidgetState();
}

class _PremiumPlanWidgetState extends ConsumerState<PremiumPlanWidget> {
  Offerings? _offerings;

  @override
  void initState() {
    super.initState();
    _fetchOfferings();
  }

  Future<void> _fetchOfferings() async {
    try {
      final offerings = await Purchases.getOfferings();
      if (mounted) {
        setState(() {
          _offerings = offerings;
        });
      }
    } catch (e) {
      debugPrint('Error fetching offerings: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final monthly = _offerings?.current?.monthly;
    final annual = _offerings?.current?.annual;
    final monthlyPrice = monthly?.storeProduct.priceString ?? '';
    final annualPrice = annual?.storeProduct.priceString ?? '';

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFFC9A8FF),
              Color(0xFFE8A7F2),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        clipBehavior: Clip.none,
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              right: 0,
              bottom: 30,
              child: Image.asset(AppImages.premium),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 12),
                Text(context.t.home.premiumPlan.title,
                    style: AppTextStyles.onboardingBody(
                      21,
                      weight: FontWeight.bold,
                      color: AppColors.backgroundLight,
                      letterSpacing: 0.5,
                    )),
                const SizedBox(height: 8),
                Text(context.t.home.premiumPlan.description,
                    style: AppTextStyles.onboardingBody(
                      13,
                      weight: FontWeight.w500,
                      color: AppColors.backgroundLight,
                      height: 1.2,
                      letterSpacing: 0.5,
                    )),
                // if (annualPrice.isNotEmpty) ...[
                //   const SizedBox(height: 8),
                //   Text(
                //     'Yearly: $annualPrice',
                //     style: AppTextStyles.onboardingBody(
                //       14,
                //       weight: FontWeight.bold,
                //       color: AppColors.backgroundLight,
                //     ),
                //   ),
                // ],
                // if (monthlyPrice.isNotEmpty) ...[
                //   const SizedBox(height: 4),
                //   Text(
                //     'Monthly: $monthlyPrice',
                //     style: AppTextStyles.onboardingBody(
                //       14,
                //       weight: FontWeight.bold,
                //       color: AppColors.backgroundLight,
                //     ),
                //   ),
                // ],
                const SizedBox(height: 16),
                CustomButton(
                  label: context.t.home.premiumPlan.button,
                  fullWidth: true,
                  size: CustomButtonSize.small,
                  backgroundColor: Colors.white,
                  icon: Image.asset(AppIcons.lightining, width: 24, height: 24),
                  labelColor: AppColors.onboardingButtonGradientEnd,
                  labelStyle: AppTextStyles.onboardingBody(
                    14,
                    weight: FontWeight.w500,
                    color: AppColors.onboardingButtonGradientEnd,
                  ),
                  onPressed: () async {
                    if (_offerings?.current != null) {
                      try {
                        // Present the Paywall
                        final paywallresult = await RevenueCatUI.presentPaywall(
                            offering: _offerings?.current);

                        if (paywallresult == PaywallResult.purchased) {
                          // Force refresh of premium status and user profile
                          await ref
                              .read(AllProviders.premiumProvider.notifier)
                              .refreshCustomerInfo();

                          if (mounted) {
                            Navigator.pop(context);
                          }
                        }
                      } catch (e) {
                        debugPrint('Error presenting paywall: $e');
                      }
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
