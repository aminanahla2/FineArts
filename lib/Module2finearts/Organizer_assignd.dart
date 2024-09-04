import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Organizer_Assigned extends StatefulWidget {
  const Organizer_Assigned({super.key});

  @override
  State<Organizer_Assigned> createState() => _Organizer_AssignedState();
}

class _Organizer_AssignedState extends State<Organizer_Assigned> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40,right: 20,left: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                width: 380,
                height: 180,
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
                            'Margamkali',
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
                            Text(' 08/02/2023',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),),
                          ],),
                          Row(children: [
                            Text('Time :',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),),
                            Text(' 10:00',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),),
                          ],),
                          Row(children: [
                            Text('Stage :',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),),
                            Text(' 5',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),),
                          ],),
                          Padding(
                            padding: const EdgeInsets.only(left: 309),
                            child: Row(
                              children: [
                                Icon(Icons.edit_note_outlined,size: 30,),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
