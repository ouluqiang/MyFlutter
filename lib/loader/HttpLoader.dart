import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



 Future<String> get() async {
   String url='https://api.github.com/';
   String s='';
   http.get(url).then(
       (http.Response response){
         print(response.body);
         s= response.body;
       }
   );
   return s;
 }
