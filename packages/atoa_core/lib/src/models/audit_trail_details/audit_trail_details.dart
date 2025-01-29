// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'audit_trail_details.freezed.dart';
part 'audit_trail_details.g.dart';

@freezed
class AuditTrailDetails with _$AuditTrailDetails {
  const factory AuditTrailDetails({
    @JsonKey(includeIfNull: false) String? fullName,
    @JsonKey(includeIfNull: false) String? dob,
    @JsonKey(includeIfNull: false) String? citizenship,
    @JsonKey(includeIfNull: false) String? homeAddress,
    @JsonKey(includeIfNull: false) String? occupation,
    @JsonKey(includeIfNull: false) String? sourceOfIncome,
  }) = _AuditTrailDetails;

  const AuditTrailDetails._();

  factory AuditTrailDetails.fromJson(Map<String, dynamic> json) =>
      _$AuditTrailDetailsFromJson(json);
}
