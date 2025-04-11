// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_institution.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BankInstitutionsImpl _$$BankInstitutionsImplFromJson(
        Map<String, dynamic> json) =>
    _$BankInstitutionsImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      fullName: json['fullName'] as String,
      media: (json['media'] as List<dynamic>)
          .map((e) => BankMedia.fromJson(e as Map<String, dynamic>))
          .toList(),
      features:
          (json['features'] as List<dynamic>).map((e) => e as String).toList(),
      orderBy: json['orderBy'] as num,
      transactionAmountLimit:
          (json['transactionAmountLimit'] as num?)?.toDouble() ?? 15000,
      businessBank: json['businessBank'] as bool? ?? false,
      popularBank: json['popularBank'] as bool? ?? true,
      enabled: json['enabled'] as bool? ?? false,
    );

Map<String, dynamic> _$$BankInstitutionsImplToJson(
        _$BankInstitutionsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'fullName': instance.fullName,
      'media': instance.media,
      'features': instance.features,
      'orderBy': instance.orderBy,
      'transactionAmountLimit': instance.transactionAmountLimit,
      'businessBank': instance.businessBank,
      'popularBank': instance.popularBank,
      'enabled': instance.enabled,
    };
