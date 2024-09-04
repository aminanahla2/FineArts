
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Organizer_participnts_list.dart';

class Organizer_Event extends StatefulWidget {
  const Organizer_Event({super.key});

  @override
  State<Organizer_Event> createState() => _Organizer_EventState();
}

class _Organizer_EventState extends State<Organizer_Event> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40,right: 20,left: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Organizer_participants_list();
                },));
              },
                child: Container(
                  width: 380,
                  height: 60,
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
                              'Kuchupudi',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            SizedBox(width: 80),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
