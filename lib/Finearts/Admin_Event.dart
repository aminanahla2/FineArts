
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Admin_Event_Add.dart';

class Admin_Event extends StatefulWidget {
  const Admin_Event({super.key});

  @override
  State<Admin_Event> createState() => _Admin_EventState();
}

class _Admin_EventState extends State<Admin_Event> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Center(
                child: Text(
                  'Event',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            Container(
              width: 380,
              height: 160,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(32, 69, 99, 1),
                  borderRadius: BorderRadiusDirectional.circular(10)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 140,top: 20),
                    child: Row(
                      children: [
                        Text(
                          'Mohiniyattam',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        SizedBox(width: 80),
                        Icon(CupertinoIcons.delete_solid)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(children: [
                          Text('Date  :',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),),
                          Text(' 7/12/2023',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),),
                        ],),
                        Row(children: [
                          Text('Time :',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),),
                          Text(' 10:00',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),),
                        ],),
                        Row(children: [
                          Text('Stage :',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),),
                          Text(' 3',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),),
                        ],),
                      ],
                    ),
                  ),],
              ),
            ),
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Admin_add_event();
              },));
            },
              child: Padding(
                padding: const EdgeInsets.only(top: 450,left: 300),
                child: CircleAvatar(backgroundColor: Colors.amber,radius: 30,child: Icon(Icons.add,size: 40,color: Colors.white,),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
