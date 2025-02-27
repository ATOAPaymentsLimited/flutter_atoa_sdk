import 'package:atoa_core/src/models/institution/bank_media/bank_media.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_institution.freezed.dart';
part 'bank_institution.g.dart';

/// {@template bank_institution}
/// Bank institituion
/// {@endtemplate}
@freezed
class BankInstitution with _$BankInstitution {
  /// {@macro bank_institution}
  const factory BankInstitution({
    required String id,
    required String name,
    required String fullName,
    required List<BankMedia> media,
    required List<String> features,
    @Default(15000) double transactionAmountLimit,
    @Default(false) bool businessBank,
    @Default(true) bool popularBank,
    @Default(false) bool enabled,
  }) = _BankInstitutions;

  const BankInstitution._();

  /// {@macro bank_institution}
  factory BankInstitution.fromJson(Map<String, dynamic> json) =>
      _$BankInstitutionFromJson(json);

  String get bankIcon =>
      media.firstWhere((element) => element.type == 'icon').source;

  String get bankLogo =>
      media.firstWhere((element) => element.type == 'logo').source;
}
