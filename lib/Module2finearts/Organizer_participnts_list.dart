
import 'package:flutter/material.dart';

import '../Finearts/Admin_Organizer2.dart';
import '../Finearts/Admin_organizer.dart';

class Organizer_participants_list extends StatefulWidget {
  const Organizer_participants_list({super.key});

  @override
  State<Organizer_participants_list> createState() => _Organizer_participants_listState();
}

class _Organizer_participants_listState extends State<Organizer_participants_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          children: [
            Center(
                child: Text(
                  'Participants List',
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
                  height: 60,
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
                height: 60,
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
              height: 60,
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
