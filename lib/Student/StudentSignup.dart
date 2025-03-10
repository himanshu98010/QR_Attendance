import 'package:flutter/material.dart';

class StudentSignup extends StatefulWidget {
  const StudentSignup({super.key});

  @override
  State<StudentSignup> createState() => _StudentSignupState();
}




class _StudentSignupState extends State<StudentSignup> {
  String _Year = 'FE';
  String _Division = 'A';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/Login.jpg') , fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,

        body: Stack(
          children: [
            Container(
              color: Colors.transparent,
              padding: EdgeInsets.only(left: 20, top:100),
              child: Text('Student Signup' ,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.24 ,
                    left: 40,
                    right: 40),
                color: Colors.transparent,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("  Select your Division", style: TextStyle(
                          fontSize: 20,
                        )),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: DropdownButton<String>(
                            dropdownColor: Colors.grey.shade200,
                            value: _Division,
                            items: ['A', 'B', 'C', 'D'].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              if (newValue != null) {
                                setState(() {
                                  _Division = newValue;
                                });
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("  Select your Year", style: TextStyle(
                          fontSize: 20,
                        )),
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: DropdownButton<String>(
                            dropdownColor: Colors.grey.shade200,
                            value: _Year,
                            items: ['FE', 'SE', 'TE', 'BE'].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              if (newValue != null) {
                                setState(() {
                                  _Year = newValue;
                                });
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: TextField(
                        decoration: InputDecoration(

                            fillColor: Colors.grey.shade200,
                            filled: true,
                            hintText: 'Enter your Name',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 10,
                                ),
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),
                    ),Padding(

                      padding: const EdgeInsets.only(top: 27),
                      child: TextField(

                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade200,
                            filled: true,
                            hintText: 'Enter your Roll-no',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 10,
                                ),
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 27),
                      child: TextField(
                        decoration: InputDecoration(

                            fillColor: Colors.grey.shade200,
                            filled: true,
                            hintText: 'Enter your E-mail',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 10,
                                ),
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 40,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: 'Enter your Password',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 10,
                              ),
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan,
                      ),
                      child: Container(

                        width: 200,
                        height: 45,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("LOGIN" , style: TextStyle(
                                color: Colors.black87,
                                fontSize: 20

                            ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}