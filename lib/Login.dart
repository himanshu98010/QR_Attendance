import 'package:flutter/material.dart';
import 'package:qr_attendance/StudentButton.dart';
import 'package:qr_attendance/TeacherButton.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/Login.jpg'),
          fit: BoxFit.cover
        )
      ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(''),
                Teacher(),
                SizedBox(
                  height: 30,
                ),
                Student()
              ],
            ),
          ),
        ),
    );
  }
}
