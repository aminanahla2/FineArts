

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'Student_event.dart';
import 'Student_result.dart';


class Student_event_result_nav extends StatefulWidget {
  const Student_event_result_nav({super.key});

  @override
  State<Student_event_result_nav> createState() => _StdListState();
}

class _StdListState extends State<Student_event_result_nav> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(child:
            TabBarView(children: [
              Student_Event(),
              Student_result(),
            ])
            ),
            Stack(
              children: [
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(32, 69, 99, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: TabBar(
                      labelStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      indicatorColor: Colors.white,
                      indicator: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color.fromRGBO(253, 190, 64, 1),
                          borderRadius: BorderRadius.circular(10)),
                      tabs: [
                        Tab(
                          child: Container(
                            height: 100,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                                  'Event',
                                  style: GoogleFonts.poppins(color: Colors.white),
                                )),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: 70,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                                  'Result',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        )
                      ]),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
