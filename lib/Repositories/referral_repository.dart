import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/Services/dio_service.dart';
import 'package:yogiface/utils/print.dart';

class ReferralRepository {
  ReferralRepository(this.ref);
  final Ref ref;

  DioService get _dioService => ref.read(AllProviders.dioServiceProvider);

  /// Apply referral code
  /// POST /api/user/apply-referral-code
  /// Body: { referral_code: "ABC12345" }
  Future<Response> applyReferralCode(String referralCode) async {
    try {
      return await _dioService.post(
        'user/apply-referral-code',
        data: {'referral_code': referralCode},
      );
    } on Exception catch (e, st) {
      Print.error(e.toString(), st: st);
      rethrow;
    }
  }
}
