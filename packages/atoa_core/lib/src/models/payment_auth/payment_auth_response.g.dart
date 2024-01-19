// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentAuthResponseImpl _$$PaymentAuthResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentAuthResponseImpl(
      authorisationUrl: json['authorisationUrl'] as String,
      paymentIdempotencyId: json['paymentIdempotencyId'] as String,
      userUuid: json['userUuid'] as String?,
      status: json['status'] as String?,
      featureScope: (json['featureScope'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      tracingId: json['tracingId'] as String?,
      deepLinkAuthorisationUrl: json['deepLinkAuthorisationUrl'] as String?,
      deepLinkAndroidAuthorisationUrl:
          json['deepLinkAndroidAuthorisationUrl'] as String?,
      deepLinkAuthorisationUrlIOS:
          json['deepLinkAuthorisationUrlIOS'] as String?,
      appStoreLink: json['appStoreLink'] as String?,
      androidPackageName: json['androidPackageName'] as String?,
      iOSPackageName: json['iOSPackageName'] as String?,
    );

Map<String, dynamic> _$$PaymentAuthResponseImplToJson(
        _$PaymentAuthResponseImpl instance) =>
    <String, dynamic>{
      'authorisationUrl': instance.authorisationUrl,
      'paymentIdempotencyId': instance.paymentIdempotencyId,
      'userUuid': instance.userUuid,
      'status': instance.status,
      'featureScope': instance.featureScope,
      'tracingId': instance.tracingId,
      'deepLinkAuthorisationUrl': instance.deepLinkAuthorisationUrl,
      'deepLinkAndroidAuthorisationUrl':
          instance.deepLinkAndroidAuthorisationUrl,
      'deepLinkAuthorisationUrlIOS': instance.deepLinkAuthorisationUrlIOS,
      'appStoreLink': instance.appStoreLink,
      'androidPackageName': instance.androidPackageName,
      'iOSPackageName': instance.iOSPackageName,
    };
