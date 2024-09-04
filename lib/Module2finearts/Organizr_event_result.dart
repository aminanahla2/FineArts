
import 'package:flutter/material.dart';

import '../Finearts/Admin_Event_Add.dart';
import 'Organizer_add_result.dart';
import 'Organizer_event_detail.dart';

class Organizer_event_Result extends StatefulWidget {
  const Organizer_event_Result({super.key});

  @override
  State<Organizer_event_Result> createState() => _Organizer_event_ResultState();
}

class _Organizer_event_ResultState extends State<Organizer_event_Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Organizer_event_detail();
              },));
            },
              child: Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.blue),
                ),
                child: ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(color: Colors.indigo,image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-RytA0YwnQ6UYzwS-n_7uiiOEnDXBwk6esQ&s'),fit:BoxFit.fill)),
                  ),
                  title: Text(
                    'Mohiniyattam',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: Colors.blue),
              ),
              child: ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(color: Colors.indigo,image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbN7tjEQFT2NVualiUiRPGuBqGPUSu40kpGQ&s'),fit:BoxFit.fill)),
                ),
                title: Text(
                  'Kolkali',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
            ),
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Admin_add_event();
              },));
            },
              child: InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Organizer_add_result();
                },));
              },
                child: Padding(
                  padding: const EdgeInsets.only(top: 380,left: 300),
                  child: CircleAvatar(backgroundColor: Colors.amber,radius: 30,child: Icon(Icons.add,size: 40,color: Colors.white,),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
