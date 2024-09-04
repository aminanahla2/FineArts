
import 'package:flutter/material.dart';

import 'Student_apply.dart';
import 'Student_evnet_Result_nav.dart';

class Student_event_detail extends StatefulWidget {
  const Student_event_detail({super.key});

  @override
  State<Student_event_detail> createState() => _Student_event_detailState();
}

class _Student_event_detailState extends State<Student_event_detail> {
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
                    return Student_event_result_nav();
                  },));
                },child: Container(height:30,width:30,child: Icon(Icons.arrow_back_ios_sharp))),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text(
                    'Event Detail',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                )
              ],
            ),
            SizedBox(height: 80),
            Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.indigo,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvuKNWIeuQCGJOKip0VFyOZb9ybGARlzucqA&shttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvuKNWIeuQCGJOKip0VFyOZb9ybGARlzucqA&s'),
                  radius: 60,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Mohiniyattam',
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
                        'Date',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Text('18/07/23')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Stage No',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Text('02')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Time',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Text('1:30 pm')
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
                      Text('Ground')
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Student_apply();
                },));
              },
                child: Container(
                  height: 50,
                  width: 310,
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
    );
  }
}
