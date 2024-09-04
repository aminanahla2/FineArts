
import 'package:flutter/material.dart';

import 'Admin_Event.dart';
import 'Admin_organizer_asssign.dart';
import 'Admin_student_list.dart';


class Admin_navigation extends StatefulWidget {
  const Admin_navigation({super.key});

  @override
  State<Admin_navigation> createState() => _StdListState();
}

class _StdListState extends State<Admin_navigation> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(child:
            TabBarView(children: [
              Admin_student_list(),
              Admin_organizer_list(),
              Admin_Event(),
            ])
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  height: 60,
                  width: 330,
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
                      indicatorPadding: EdgeInsets.only(top: 10, bottom: 10),
                      tabs: [
                        Tab(
                          child: Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                                  'Student',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                                  'Organizer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                                  'Event',
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
