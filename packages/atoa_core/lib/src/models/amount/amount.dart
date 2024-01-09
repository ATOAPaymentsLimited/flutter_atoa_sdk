import 'package:freezed_annotation/freezed_annotation.dart';

part 'amount.freezed.dart';
part 'amount.g.dart';

@freezed
class Amount with _$Amount {
  const factory Amount({
    @Default(0.0) double? amount,
    @Default('GBP') String currency,
  }) = _Amount;

  const Amount._();

  factory Amount.fromJson(Map<String, dynamic> json) => _$AmountFromJson(json);
}
