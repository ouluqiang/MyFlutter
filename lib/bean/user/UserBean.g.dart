// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserBean.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

UserBean _$UserBeanFromJson(Map<String, dynamic> json) => new UserBean(
    createdAt: json['createdAt'] as String,
    objectId: json['objectId'] as String,
    sessionToken: json['sessionToken'] as String,
    updatedAt: json['updatedAt'] as String,
    username: json['username'] as String,
    email: json['email'] as String,
    emailVerified: json['emailVerified'] as bool);

abstract class _$UserBeanSerializerMixin {
  String get createdAt;
  String get objectId;
  String get sessionToken;
  String get updatedAt;
  String get username;
  String get email;
  bool get emailVerified;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'createdAt': createdAt,
        'objectId': objectId,
        'sessionToken': sessionToken,
        'updatedAt': updatedAt,
        'username': username,
        'email': email,
        'emailVerified': emailVerified
      };
}
