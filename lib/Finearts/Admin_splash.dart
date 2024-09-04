import 'package:flutter/material.dart';

import 'Admin_Login.dart';

class Admin_first_page extends StatefulWidget {
  const Admin_first_page({super.key});

  @override
  State<Admin_first_page> createState() => _Admin_first_pageState();
}

class _Admin_first_pageState extends State<Admin_first_page> {
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
                  return Admin_login_page();
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
