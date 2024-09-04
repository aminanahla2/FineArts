
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Admin_navigation.dart';
import 'Admin_organizer.dart';
import 'Admin_student_list.dart';


class Admin_assign extends StatefulWidget {
  const Admin_assign({super.key});

  @override
  State<Admin_assign> createState() => _Admin_assignState();
}

class _Admin_assignState extends State<Admin_assign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Admin_student_list();
          },));
        }, icon: Icon(CupertinoIcons.back)),
        backgroundColor: Colors.white,
        title: Text(
          "                   Assign",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 22),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right:0, top: 20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color.fromRGBO(32, 69, 99, 1)),
                      borderRadius: BorderRadius.circular(5)),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 45,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(32, 69, 99, 1),
                      border:
                      Border.all(color: Color.fromRGBO(85, 141, 187, 1)),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Row(
                      children: [
                        Text(
                          "   Kathakali",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color.fromRGBO(32, 69, 99, 1)),
                      borderRadius: BorderRadius.circular(5)),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 45,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(32, 69, 99, 1),
                      border:
                      Border.all(color: Colors.indigo),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Row(
                      children: [
                        Text(
                          "   Kolkali",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 520,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Admin_navigation();
                    },));
                  },
                  child: Container(
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromRGBO(32, 69, 99, 1),
                    ),
                    child: Center(
                        child: Text(
                          'Submit',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
