import 'package:flutter/material.dart';
class Student extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: (){
          Navigator.pushNamed(context, 'student button');
        },
        child: Container(
          width: 200,
          height: 100,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Student" , style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20

              ),
              ),
              Icon(Icons.person ,
                size: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
