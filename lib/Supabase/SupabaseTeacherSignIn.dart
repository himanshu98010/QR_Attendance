import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

String _currentTeacherID = '';
void setCurrentTeacherID(String Id){
  _currentTeacherID = Id;
}

String getCurrentTeacherID(){
  return _currentTeacherID;
}

String _currentTeacherName = 'hahah';
void setCurrentTeacherName(String Name){
  _currentTeacherName = Name;
}

String getCurrentTeacherName(){
  return _currentTeacherName;
}

Future<void> signInCustomTeacherID(BuildContext context ,String customID, String password) async {
  final supabase = Supabase.instance.client;
  final response = await supabase
      .from('teacher')
      .select('*')
      .eq('tid', customID);

  if (response != null && response.length > 0) {
    final  userID = response[0]['tid'];
    final storedPassword = response[0]['password'];
    String userName = response[0]['name'];

    if(password == storedPassword){
      setCurrentTeacherID(userID);
      setCurrentTeacherName(userName);
      _showSuccessPopup(context);

    }else{
      _showErrorWrongPasswordPopup(context);
    }
  }else{
    _showErrorPopup(context);
  }



}

void _showErrorPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Error'),
      content: Text('User not Found'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('OK'),
        ),
      ],
    ),
  );
}

void _showErrorWrongPasswordPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Error'),
      content: Text('Incorrect Password'),
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
      content: Text('User Logged In Successfully'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pushNamed(context,'teacher'),
          child: Text('OK'),
        ),
      ],
    ),
  );
}