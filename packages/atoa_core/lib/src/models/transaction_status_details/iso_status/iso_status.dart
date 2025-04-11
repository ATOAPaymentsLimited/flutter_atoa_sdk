import 'package:freezed_annotation/freezed_annotation.dart';

part 'iso_status.freezed.dart';
part 'iso_status.g.dart';

@freezed
class IsoStatus with _$IsoStatus {
  factory IsoStatus({
    String? code,
    String? name,
  }) = _IsoStatus;

  factory IsoStatus.fromJson(Map<String, dynamic> json) =>
      _$IsoStatusFromJson(json);
}
