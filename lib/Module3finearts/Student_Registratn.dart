
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Student_evnet_Result_nav.dart';

class Student_Registration extends StatefulWidget {
  const Student_Registration({super.key});

  @override
  State<Student_Registration> createState() => _Student_RegistrationState();
}

class _Student_RegistrationState extends State<Student_Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 120),
                      child: Text(
                        'Registration',
                        style:GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 60),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Phone No',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: '0000000000'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: '@gmail.com'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'ID Number',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Department',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Student_event_result_nav();
                },));
              },
                child: Padding(
                  padding: const EdgeInsets.only( top: 10,left: 8),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Container(
                          height: 50,
                          width: 310,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(32, 69, 99, 1),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, color: Colors.white),
                              )),
                        ),
                      ),
                      SizedBox(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
