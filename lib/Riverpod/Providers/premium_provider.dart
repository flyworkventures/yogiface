import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:yogiface/utils/print.dart';

class PremiumNotifier extends StateNotifier<bool> {
  final Future<void> Function()? onPremiumPurchased;

  PremiumNotifier({this.onPremiumPurchased}) : super(false) {
    _init();
  }

  Future<void> _init() async {
    try {
      CustomerInfo customerInfo = await Purchases.getCustomerInfo();
      _updatePremiumStatus(customerInfo);

      Purchases.addCustomerInfoUpdateListener((customerInfo) {
        _updatePremiumStatus(customerInfo);
      });
    } catch (e) {
      Print.error('Error fetching customer info: $e');
      state = false;
    }
  }

  Future<void> refreshCustomerInfo() async {
    try {
      CustomerInfo customerInfo = await Purchases.getCustomerInfo();
      _updatePremiumStatus(customerInfo);
    } catch (e) {
      Print.error('Error refreshing customer info: $e');
    }
  }

  void _updatePremiumStatus(CustomerInfo customerInfo) {
    final isPremium = customerInfo.entitlements.active.isNotEmpty;

    // Always update if status changed
    if (state != isPremium) {
      state = isPremium;
      Print.info('Premium status updated: $isPremium');

      // If user became premium, trigger callback to refresh user profile
      if (isPremium) {
        onPremiumPurchased?.call();
      }
    }
  }
}
