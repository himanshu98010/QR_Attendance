import 'package:flutter/material.dart';
import 'package:qr_attendance/Supabase/SupabaseCreateClass.dart';
import 'package:qr_attendance/Supabase/SupabaseTeacherSignIn.dart';

class AddClass extends StatefulWidget {
  const AddClass({super.key});

  @override
  State<AddClass> createState() => _AddClassState();
}

class _AddClassState extends State<AddClass> {
  @override

  final _formKey = GlobalKey<FormState>();
  String _currenttid = getCurrentTeacherID();
  String _createdClass ='';

  void _submitForm(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      CreateClass(context, _currenttid, _createdClass);
    }
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/Login.jpg') , fit: BoxFit.cover)
      ),
      child: Form(
        key: _formKey,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 40 , top: 300 , right: 40),
                  child: Scaffold(
                    backgroundColor: Colors.transparent,
                    body: TextFormField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: 'Enter Class Name',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 10,
                              ),
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                      validator: (value){
                        if (value == null || value.isEmpty){
                          return 'Please enter Class name';
                        }
                        return null;
                      },
                      onSaved: (value) => _createdClass = value!,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 85 , top: 370),
                  child: Container(

                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black , width: 2),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: ElevatedButton(
                        onPressed:()=> _submitForm(context),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),

                        child: Text('Add Class')
                    ),
                  ) ,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
