import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_media.freezed.dart';
part 'bank_media.g.dart';

@freezed
class BankMedia with _$BankMedia {
  const factory BankMedia({
    required String source,
    required String type,
  }) = _BankMedia;

  const BankMedia._();

  factory BankMedia.fromJson(Map<String, dynamic> json) =>
      _$BankMediaFromJson(json);
}
