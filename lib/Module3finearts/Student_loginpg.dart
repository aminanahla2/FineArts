
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Student_Registratn.dart';

class Student_login_page extends StatefulWidget {
  const Student_login_page({super.key});

  @override
  State<Student_login_page> createState() => _Student_login_pageState();
}

class _Student_login_pageState extends State<Student_login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20,top: 150),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  )),
            ),
            SizedBox(height: 60),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  hintText: 'Username'),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  hintText: 'Password'),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Student_Registration();
              },));
            },
              child: Container(
                width: 400,
                height: 50,
                decoration: BoxDecoration(color: Color.fromRGBO(32, 69, 99, 1)),
                child: Center(child: Text('Login',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
              ),
            ),
            SizedBox(height: 40,),
            Column(children: [Text('Create New Account',style: TextStyle(color: Colors.indigo[900]),)],)
          ],
        ),
      ),
    );
  }
}
