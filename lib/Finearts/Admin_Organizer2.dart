
import 'package:flutter/material.dart';

import 'Admin_assign.dart';
import 'Admin_organizer_asssign.dart';

class Admin_organizer_2 extends StatefulWidget {
  const Admin_organizer_2({super.key});

  @override
  State<Admin_organizer_2> createState() => _Admin_organizer_2State();
}

class _Admin_organizer_2State extends State<Admin_organizer_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Admin_organizer_list();
                    },));
                  },child: Container(height: 30,width: 30, child: Icon(Icons.arrow_back_ios_sharp))),
                  Padding(
                    padding: const EdgeInsets.only(left: 110),
                    child: Text(
                      'Organizer',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.indigo,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvuKNWIeuQCGJOKip0VFyOZb9ybGARlzucqA&s'),radius: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text('Name',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                  )
                ],
              ),

              SizedBox(height: 30),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'ID Number',
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: '0000000'),
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
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: '8129222401'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Assign',
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Container(
                    height: 100,
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.black)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Row(
                          children: [
                            Text('Kathakali'),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Kolkali'),
                          ],
                        )
                      ],),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only( top: 100,left: 10),
                child: Row(
                  children: [
                    InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Admin_assign();
                      },));
                    },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 19),
                        child: Container(
                          height: 50,
                          width: 310,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(32, 69, 99, 1),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                              child: Text(
                                'Assign',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, color: Colors.white),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
