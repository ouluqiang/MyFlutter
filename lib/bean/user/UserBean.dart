import 'package:json_annotation/json_annotation.dart';


part 'package:my_flutter/bean/user/UserBean.g.dart';

@JsonSerializable()
class UserBean extends Object with _$UserBeanSerializerMixin{
   String createdAt;
   String objectId;
   String sessionToken;
   String updatedAt;
   String username;

   UserBean({this.createdAt,this.objectId,this.sessionToken,this.updatedAt,this.username});

   factory UserBean.fromJson(Map<String, dynamic> json) => _$UserBeanFromJson(json);

}