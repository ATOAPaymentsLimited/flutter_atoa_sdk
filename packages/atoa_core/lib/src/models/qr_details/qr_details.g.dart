// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QrDetailsImpl _$$QrDetailsImplFromJson(Map<String, dynamic> json) =>
    _$QrDetailsImpl(
      id: json['id'] as String,
      nickName: json['nickName'] as String?,
      referenceId: json['referenceId'] as String?,
      integrationId: json['integrationId'] as String?,
      tableId: json['tableId'] as String?,
      integrationDetails: json['integrationDetails'] == null
          ? null
          : IntegrationDetails.fromJson(
              json['integrationDetails'] as Map<String, dynamic>),
      amount: (json['amount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$QrDetailsImplToJson(_$QrDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      if (instance.nickName case final value?) 'nickName': value,
      if (instance.referenceId case final value?) 'referenceId': value,
      if (instance.integrationId case final value?) 'integrationId': value,
      if (instance.tableId case final value?) 'tableId': value,
      if (instance.integrationDetails case final value?)
        'integrationDetails': value,
      if (instance.amount case final value?) 'amount': value,
    };
