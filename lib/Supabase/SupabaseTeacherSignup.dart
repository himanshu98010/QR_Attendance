import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> TeacherSignUpID(BuildContext context ,String Name , String ID, String password , String key  ) async {
  final supabase = Supabase.instance.client;
  if(key == '234005'){
    try {
      final response = await supabase.from('teacher').insert([
        {'name' : Name , 'tid' : ID , 'password' : password}
      ]);

      if(response == null){

        _showSuccessPopup(context);
      }
      else{
        _showErrorPopup(context , 'Error: ${response.error!.message}');
      }
    }catch (e) {
      // Handle unexpected errors

    }

  }



}
void _showErrorPopup(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Error'),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('OK'),
        ),
      ],
    ),
  );
}

void _showSuccessPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Success'),
      content: Text('Successfully signed up!'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pushNamed(context, 'teacher login button'),
          child: Text('OK'),
        ),
      ],
    ),
  );
}
