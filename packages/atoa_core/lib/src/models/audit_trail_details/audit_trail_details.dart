import 'package:freezed_annotation/freezed_annotation.dart';

part 'audit_trail_details.freezed.dart';
part 'audit_trail_details.g.dart';

@freezed
class AuditTrailDetails with _$AuditTrailDetails {
  const factory AuditTrailDetails({
    String? fullName,
    String? dob,
    String? citizenship,
    String? homeAddress,
    String? occupation,
    String? sourceOfIncome,
  }) = _AuditTrailDetails;

  const AuditTrailDetails._();

  factory AuditTrailDetails.fromJson(Map<String, dynamic> json) =>
      _$AuditTrailDetailsFromJson(json);
}
