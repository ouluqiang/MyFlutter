import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';
class SpConfig{
  static Future<SharedPreferences> preferences = SharedPreferences.getInstance();

 static final SESSION_TOKEN='sessionToken';
 static final USERNAME='username';
 static final OBJECT_ID='objectId';
 static final EMAIL='email';

}