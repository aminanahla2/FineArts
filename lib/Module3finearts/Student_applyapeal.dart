
import 'package:flutter/material.dart';

import 'Student_evnet_Result_nav.dart';

class Student_apply_appeal extends StatefulWidget {
  const Student_apply_appeal({super.key});

  @override
  State<Student_apply_appeal> createState() => _Student_apply_appealState();
}

class _Student_apply_appealState extends State<Student_apply_appeal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20,right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Student_event_result_nav();
                    },));
                  },child: Container(height:30,width: 30,child: Icon(Icons.arrow_back_ios_sharp))),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Text(
                      'Apply Appeal',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.indigo,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvuKNWIeuQCGJOKip0VFyOZb9ybGARlzucqA&s'),
                    radius: 60,
                  ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                children: [
                  Row(
                    children: [
                      Text('Name',style: TextStyle(fontSize: 16),),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    children: [
                      Text('Video Link',style: TextStyle(fontSize: 16),),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    children: [
                      Text('Department',style: TextStyle(fontSize: 16),),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    children: [
                      Text('Description',style: TextStyle(fontSize: 16),),
                    ],
                  ),
                  TextField(maxLines: 5,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Student_event_result_nav();
                  },));
                },
                  child: Container(
                    height: 50,
                    width: 320,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(32, 69, 99, 1),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Text(
                          'Apply',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
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
