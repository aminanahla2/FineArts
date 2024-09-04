
import 'package:flutter/material.dart';

import 'Organizer_assignmnt_event_appeal.dart';


class Organizer_Registraion extends StatefulWidget {
  const Organizer_Registraion({super.key});

  @override
  State<Organizer_Registraion> createState() => _Organizer_RegistraionState();
}

class _Organizer_RegistraionState extends State<Organizer_Registraion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [

              Container(
                width: 100,
                height: 100,
                decoration:
                BoxDecoration(shape: BoxShape.rectangle,image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbFeUuNms8ZXLng_Wq5COfqX3FbTFxzF0rizYOzMKzVi3CkGp4'),fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Center(
                    child: Text(
                      'Registration',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    )),
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
                        'Email',
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
                        'Id Number',
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
                height: 10,
              ),
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Organizer_Assignment_event_Appeal_nav();
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
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Submit',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, color: Colors.white),
                                ),
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
