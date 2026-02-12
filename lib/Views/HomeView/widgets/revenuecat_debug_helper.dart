import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/utils/print.dart';

/// Debug widget to test RevenueCat integration
/// Add this to your HomeView temporarily to test RevenueCat functionality
class RevenueCatDebugHelper extends ConsumerStatefulWidget {
  const RevenueCatDebugHelper({super.key});

  @override
  ConsumerState<RevenueCatDebugHelper> createState() =>
      _RevenueCatDebugHelperState();
}

class _RevenueCatDebugHelperState extends ConsumerState<RevenueCatDebugHelper> {
  CustomerInfo? _customerInfo;
  Offerings? _offerings;
  String _status = 'Initializing...';

  @override
  void initState() {
    super.initState();
    _fetchRevenueCatData();
  }

  Future<void> _fetchRevenueCatData() async {
    try {
      Print.info('🔍 [DEBUG] Fetching RevenueCat data...');

      // Get customer info
      final customerInfo = await Purchases.getCustomerInfo();
      final offerings = await Purchases.getOfferings();

      setState(() {
        _customerInfo = customerInfo;
        _offerings = offerings;
        _status = 'Data fetched successfully';
      });

      _logCustomerInfo(customerInfo);
      _logOfferings(offerings);
      _logPremiumStatus();
    } catch (e) {
      setState(() {
        _status = 'Error: $e';
      });
      Print.error('🔍 [DEBUG] Error fetching RevenueCat data: $e');
    }
  }

  void _logCustomerInfo(CustomerInfo info) {
    Print.info('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
    Print.info('🔍 [DEBUG] CUSTOMER INFO');
    Print.info('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
    Print.info('📋 Original App User ID: ${info.originalAppUserId}');
    Print.info(
        '📋 Active Entitlements: ${info.entitlements.active.keys.toList()}');
    Print.info('📋 All Entitlements: ${info.entitlements.all.keys.toList()}');
    Print.info('📋 Active Subscriptions: ${info.activeSubscriptions}');
    Print.info(
        '📋 All Purchased Product IDs: ${info.allPurchasedProductIdentifiers}');
    Print.info('📋 Latest Expiration Date: ${info.latestExpirationDate}');
    Print.info('📋 Original Purchase Date: ${info.originalPurchaseDate}');
    Print.info('📋 Request Date: ${info.requestDate}');

    if (info.entitlements.active.isNotEmpty) {
      Print.info('✅ USER HAS ACTIVE PREMIUM');
      for (var entry in info.entitlements.active.entries) {
        Print.info('  └─ ${entry.key}: ${entry.value.productIdentifier}');
        Print.info('     Expires: ${entry.value.expirationDate}');
        Print.info('     Will Renew: ${entry.value.willRenew}');
      }
    } else {
      Print.info('❌ NO ACTIVE PREMIUM');
    }
    Print.info('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
  }

  void _logOfferings(Offerings offerings) {
    Print.info('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
    Print.info('🔍 [DEBUG] OFFERINGS INFO');
    Print.info('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
    Print.info('📦 Current Offering ID: ${offerings.current?.identifier}');
    Print.info('📦 All Offerings: ${offerings.all.keys.toList()}');

    if (offerings.current != null) {
      final current = offerings.current!;
      Print.info('📦 Available Packages in Current Offering:');
      for (var package in current.availablePackages) {
        Print.info('  └─ ${package.identifier}');
        Print.info('     Product: ${package.storeProduct.identifier}');
        Print.info('     Price: ${package.storeProduct.priceString}');
        Print.info('     Title: ${package.storeProduct.title}');
      }

      if (current.monthly != null) {
        Print.info('📦 Monthly: ${current.monthly!.storeProduct.priceString}');
      }
      if (current.annual != null) {
        Print.info('📦 Annual: ${current.annual!.storeProduct.priceString}');
      }
    } else {
      Print.info('⚠️ No current offering available');
    }
    Print.info('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
  }

  void _logPremiumStatus() {
    final isPremiumRC = _customerInfo?.entitlements.active.isNotEmpty ?? false;
    final isPremiumProvider = ref.read(AllProviders.premiumProvider);
    final userState = ref.read(AllProviders.userProvider);

    Print.info('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
    Print.info('🔍 [DEBUG] PREMIUM STATUS COMPARISON');
    Print.info('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
    Print.info('🎯 RevenueCat Premium: $isPremiumRC');
    Print.info('🎯 PremiumProvider Premium: $isPremiumProvider');

    userState.asyncValue.whenOrNull(
      data: (authResponse) {
        final user = userState.currentUser?.user;
        Print.info('🎯 Backend User Premium: ${user?.isPremium}');
        Print.info('🎯 User ID: ${user?.id}');

        if (isPremiumRC != isPremiumProvider) {
          Print.info(
              '⚠️ WARNING: RevenueCat and Provider states DO NOT match!');
        }
        if (user != null && isPremiumRC != user.isPremium) {
          Print.info('⚠️ WARNING: RevenueCat and Backend states DO NOT match!');
        }
        if (isPremiumRC == isPremiumProvider &&
            user?.isPremium == isPremiumRC) {
          Print.info('✅ ALL STATES ARE IN SYNC');
        }
      },
      loading: () => Print.info('🎯 Backend User: Loading...'),
      error: (e, s) => Print.error('🎯 Backend User Error: $e'),
    );
    Print.info('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
  }

  @override
  Widget build(BuildContext context) {
    final isPremium = ref.watch(AllProviders.premiumProvider);
    final userState = ref.watch(AllProviders.userProvider);

    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.yellow, width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const Icon(Icons.bug_report, color: Colors.yellow),
              const SizedBox(width: 8),
              const Text(
                'RevenueCat Debug',
                style: TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.refresh, color: Colors.white),
                onPressed: _fetchRevenueCatData,
              ),
            ],
          ),
          const Divider(color: Colors.yellow),
          const SizedBox(height: 8),
          _buildInfoRow('Status', _status),
          _buildInfoRow('RC Premium', isPremium ? '✅ Active' : '❌ Inactive'),
          Builder(
            builder: (context) {
              final authResponse = userState.currentUser;
              final user = authResponse?.user;

              if (userState.asyncValue.isLoading && !userState.hasUser) {
                return _buildInfoRow('Backend', 'Loading...');
              }

              if (user == null) {
                return _buildInfoRow('Backend', 'Error');
              }

              return Column(
                children: [
                  _buildInfoRow('Backend Premium',
                      user.isPremium == true ? '✅ Active' : '❌ Inactive'),
                  _buildInfoRow('User ID', user.id.toString()),
                ],
              );
            },
          ),
          if (_customerInfo != null) ...[
            _buildInfoRow('RC User ID', _customerInfo!.originalAppUserId),
            _buildInfoRow('Active Entitlements',
                _customerInfo!.entitlements.active.keys.join(', ')),
          ],
          const SizedBox(height: 8),
          const Text(
            '⚠️ Check debug console for detailed logs',
            style: TextStyle(color: Colors.orange, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              '$label:',
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 12,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
