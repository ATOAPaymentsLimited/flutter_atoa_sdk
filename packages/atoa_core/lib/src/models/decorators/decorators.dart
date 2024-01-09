import 'package:freezed_annotation/freezed_annotation.dart';

const parseToNumNull = JsonKey(fromJson: parseStringToNumNull);

num? parseStringToNumNull(dynamic value) {
  if (value == null) {
    return null;
  }
  if (value is String) {
    return num.tryParse(value);
  }

  return value as num?;
}
