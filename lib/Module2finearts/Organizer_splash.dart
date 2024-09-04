import 'package:flutter/material.dart';

import '../Finearts/Admin_Login.dart';
import 'Organizr_login.dart';


class Organizer_splash extends StatefulWidget {
  const Organizer_splash({super.key});

  @override
  State<Organizer_splash> createState() => _Organizer_splashState();
}

class _Organizer_splashState extends State<Organizer_splash> {
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
                  return Organizer_login_page();
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
