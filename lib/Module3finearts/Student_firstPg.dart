import 'package:flutter/material.dart';

import '../Finearts/Admin_Login.dart';
import 'Student_loginpg.dart';


class Student_splash extends StatefulWidget {
  const Student_splash({super.key});

  @override
  State<Student_splash> createState() => _Student_splashState();
}

class _Student_splashState extends State<Student_splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(32, 69, 99, 1),
      body: InkWell(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Admin_login_page();
        },));
      },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 100,top: 320),
              child: InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Student_login_page();
                },));
              },
                child: Container(
                  width: 200,
                  height: 200,
                  decoration:
                  BoxDecoration(shape: BoxShape.rectangle,image: DecorationImage(image: AssetImage('assets/stage.png'),fit: BoxFit.cover)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
