import 'package:flutter/material.dart';
class Teacher extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: (){
          Navigator.pushNamed(context, 'teacher button');
        },
        child: Container(
          width: 200,
          height: 100,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Teacher" , style: TextStyle(
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
