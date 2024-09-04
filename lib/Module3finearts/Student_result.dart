
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'Student_eventResult.dart';

class Student_result extends StatefulWidget {
  const Student_result({super.key});

  @override
  State<Student_result> createState() => _Student_resultState();
}

class _Student_resultState extends State<Student_result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 40),
        child: Column(
          children: [
            Text('Result',style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 25),),
            SizedBox(
              height: 50,
            ),
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Student_event_result();
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
          ],
        ),
      ),
    );
  }
}
