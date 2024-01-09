import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchant_payee_address.freezed.dart';
part 'merchant_payee_address.g.dart';

@freezed
class MerchantPayeeAddress with _$MerchantPayeeAddress {
  const factory MerchantPayeeAddress({
    String? country,
    String? postCode,
    String? townName,
  }) = _MerchantPayeeAddress;

  const MerchantPayeeAddress._();

  factory MerchantPayeeAddress.fromJson(Map<String, dynamic> json) =>
      _$MerchantPayeeAddressFromJson(json);
}
