import 'package:flutter/material.dart';

import 'Admin_student_detail.dart';

class Admin_student_list extends StatefulWidget {
  const Admin_student_list({super.key});

  @override
  State<Admin_student_list> createState() => _Admin_student_listState();
}

class _Admin_student_listState extends State<Admin_student_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Center(
                  child: Text(
                    'Students List',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  )),
            ),
            SizedBox(height:5,),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Admin_student_detail();
                        },));
                      },
                        child: Container(height: 60,width: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),color: Colors.white,border:Border.all(color: Colors.black),
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.indigo,backgroundImage:  NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvuKNWIeuQCGJOKip0VFyOZb9ybGARlzucqA&s'),
                            ),
                            title: Text(
                              'Name',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            subtitle: Text('ID Number'),
                          ),
                        ),
                      ),SizedBox(height: 20,)
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
