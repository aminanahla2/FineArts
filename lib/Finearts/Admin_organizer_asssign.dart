
import 'package:flutter/material.dart';

import 'Admin_Organizer2.dart';
import 'Admin_organizer.dart';
import 'Admin_student_list.dart';

class Admin_organizer_list extends StatefulWidget {
  const Admin_organizer_list({super.key});

  @override
  State<Admin_organizer_list> createState() => _Admin_organizer_listState();
}

class _Admin_organizer_listState extends State<Admin_organizer_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          children: [
            Center(
                child: Text(
                  'Organizer List',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Admin_organizer();
                },));
              },
                child: Container(
                  height: 80,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(color: Colors.black,),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.indigo,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvuKNWIeuQCGJOKip0VFyOZb9ybGARlzucqA&s'),
                    ),
                    title: Text(
                      'Name',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    subtitle: Text('ID Number'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Admin_organizer_2();
              },));
            },
              child: Container(
                height: 80,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.indigo,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvuKNWIeuQCGJOKip0VFyOZb9ybGARlzucqA&s'),
                  ),
                  title: Text(
                    'Name',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text('ID Number'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: Colors.black),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.indigo,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvuKNWIeuQCGJOKip0VFyOZb9ybGARlzucqA&s'),
                ),
                title: Text(
                  'Name',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: Text('ID Number'),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
