// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BaseBean.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

BaseBean _$BaseBeanFromJson(Map<String, dynamic> json) =>
    new BaseBean(code: json['code'] as int, error: json['error'] as String);

abstract class _$BaseBeanSerializerMixin {
  int get code;
  String get error;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'code': code, 'error': error};
}
