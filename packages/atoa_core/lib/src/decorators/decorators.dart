import 'package:freezed_annotation/freezed_annotation.dart';

const parseToStringNull = JsonKey(fromJson: parseNumToStringNull);

String? parseNumToStringNull(dynamic value) {
  if (value == null) {
    return null;
  }
  if (value is num) {
    return value.toString();
  }

  return value as String;
}
