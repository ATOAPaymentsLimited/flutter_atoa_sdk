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
      transactionAmountLimit:
          (json['transactionAmountLimit'] as num?)?.toDouble() ?? 15000,
      businessBank: json['businessBank'] as bool? ?? false,
      popularBank: json['popularBank'] as bool? ?? false,
    );

Map<String, dynamic> _$$BankInstitutionsImplToJson(
        _$BankInstitutionsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'fullName': instance.fullName,
      'media': instance.media,
      'features': instance.features,
      'transactionAmountLimit': instance.transactionAmountLimit,
      'businessBank': instance.businessBank,
      'popularBank': instance.popularBank,
    };
