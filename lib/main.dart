import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_attendance/Login.dart';
import 'package:qr_attendance/StudentLoginSignUp.dart';
import 'package:qr_attendance/TeacherLoginSignUp.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context)=>LoginPage(),
      'teacher button': (context)=>TeacherloginSignUp(),
      'student button': (context)=>StudentloginSignUp(),
    },
  ),
  );
}
