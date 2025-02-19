// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_status_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionStatusDetailsImpl _$$TransactionStatusDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionStatusDetailsImpl(
      status: json['status'] == null
          ? null
          : TransactionStatus.fromJson(json['status']),
      isoStatus: json['isoStatus'] == null
          ? null
          : IsoStatus.fromJson(json['isoStatus'] as Map<String, dynamic>),
      statusUpdateDate: json['statusUpdateDate'] as String?,
    );
