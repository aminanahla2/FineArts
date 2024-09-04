
import 'package:flutter/material.dart';

import 'Admin_navigation.dart';

class Admin_student_detail extends StatefulWidget {
  const Admin_student_detail({super.key});

  @override
  State<Admin_student_detail> createState() => _Admin_student_detailState();
}

class _Admin_student_detailState extends State<Admin_student_detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Admin_navigation();
                  },));
                },child: Container(height:30,width:30,child: Icon(Icons.arrow_back_ios_sharp))),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text(
                    'Student Detail',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                )
              ],
            ),
            SizedBox(height: 80),
            Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.indigo,backgroundImage: AssetImage('ASSETS/User.jpeg'),
                  radius: 60,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Name',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 80),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'ID Number',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text('0000000')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Department',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('BSc Computer Science')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Phone No',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text('8129222401')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text('Collage')
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 200),
              child: Row(
                children: [
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Admin_navigation();
                    },));
                  },
                    child: Container(
                      height: 40,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.green[900],
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(child: Text('Accept',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                    ),
                  ),
                  SizedBox(width: 30),
                  Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.red[900],
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(child: Text('Reject',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
