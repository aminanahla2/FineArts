
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Organizer_event.dart';
import 'Organizr_event_result.dart';

class Organizer_event_and_result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 29, right: 29),
                  child: Container(
                    width: 450,
                    height: 49,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(34, 118, 187, 0.44),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                TabBar(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(253, 190, 64, 1),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        'Event',
                        style: TextStyle(
                          // color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Result',
                        style: TextStyle(
                          // color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
              Expanded(
                child: TabBarView(
                  children: [
                    Organizer_Event(), // Call the first class
                    Organizer_event_Result(),
                    // Call the second class
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
