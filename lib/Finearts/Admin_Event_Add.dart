
import 'package:flutter/material.dart';

import 'Admin_navigation.dart';

class Admin_add_event extends StatefulWidget {
  const Admin_add_event({super.key});

  @override
  State<Admin_add_event> createState() => _Admin_add_eventState();
}

class _Admin_add_eventState extends State<Admin_add_event> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(onTap:() {
                  Navigator.push(context, MaterialPageRoute(builder:(context) {
                    return Admin_navigation();
                  },));
                },child: Container(height:30,width:30,child: Icon(Icons.arrow_back_ios_sharp))),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Text(
                    'Add Event',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                )
              ],
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
                      hintText: '...............'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Date',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'DD/MM/YYYY'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Stage No',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: '000000'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Time',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: '00:00'),
                ),
              ],
            ),
            SizedBox(
              height: 250,
            ),
            Padding(
              padding: const EdgeInsets.only( top: 10),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 350,
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
                  SizedBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
