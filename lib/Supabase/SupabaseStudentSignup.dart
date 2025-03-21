
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> StudentSignUpID(BuildContext context ,String ID, String password , String Div , String Year , String Name , int Roll  ) async {
  final supabase = Supabase.instance.client;


  try {
    // Attempt to insert the new user into the table
    final response = await supabase.from('student').insert(
      {'id' : ID , 'password' : password , 'year' : Year , 'division' : Div , 'name' : Name , 'roll no' : Roll}
    );

    if (response == null) {
      _showSuccessPopup(context );
    } else {
      // Success

      _showErrorPopup(context , 'Error: ${response.error.message}');
    }
  } catch (e) {
    // Handle unexpected errors
    _showErrorPopup(context , 'An unexpected error occurred: $e');
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
          onPressed: () => Navigator.pushNamed(context, 'student login button'),
          child: Text('OK'),
        ),
      ],
    ),
  );
}
