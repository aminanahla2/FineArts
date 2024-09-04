
import 'package:flutter/material.dart';


import '../Finearts/Admin_navigation.dart';
import 'Organizer_update_result.dart';

class Organizer_appeal_detail extends StatefulWidget {
  const Organizer_appeal_detail({super.key});

  @override
  State<Organizer_appeal_detail> createState() => _Organizer_appeal_detailState();
}

class _Organizer_appeal_detailState extends State<Organizer_appeal_detail> {
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
                      return Admin_navigation();
                    },));
                  },child: Container(height:30,width: 30,child: Icon(Icons.arrow_back_ios_sharp))),
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: Text(
                      'Appeal Detail',
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
                      Text('Event Name',style: TextStyle(fontSize: 16),),
                    ],
                  ),
                  TextField(readOnly: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        hintText: 'Margamkali'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    children: [
                      Text('Vidio Link',style: TextStyle(fontSize: 16),),
                    ],
                  ),
                  TextField(readOnly: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        hintText: 'www,httrsgssbz',hintStyle: TextStyle(color: Colors.blue,fontWeight: FontWeight.w400)),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text('Discription',style: TextStyle(fontSize: 16),),
                    ],
                  ),
                  Container(height: 200,width: 400,decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(10)),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40,top: 100),
                child: Row(
                  children: [
                    InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Admin_navigation();
                      },));
                    },
                      child: InkWell(onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Organizer_update_result();
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
                    ),
                    SizedBox(width: 15),
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
      ),
    );
  }
}
