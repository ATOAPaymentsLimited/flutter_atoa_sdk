import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_account_identifications.freezed.dart';
part 'bank_account_identifications.g.dart';

@freezed
class BankAccountIdentifications with _$BankAccountIdentifications {
  const factory BankAccountIdentifications({
    required String type,
    required String? identification,
  }) = _BankAccountIdentifications;

  const BankAccountIdentifications._();

  factory BankAccountIdentifications.fromJson(Map<String, dynamic> json) =>
      _$BankAccountIdentificationsFromJson(json);
}
