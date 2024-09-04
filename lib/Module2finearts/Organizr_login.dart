
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Organzr_registrtn.dart';

class Organizer_login_page extends StatefulWidget {
  const Organizer_login_page({super.key});

  @override
  State<Organizer_login_page> createState() => _Organizer_login_pageState();
}

class _Organizer_login_pageState extends State<Organizer_login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20,top: 50),
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration:
              BoxDecoration(shape: BoxShape.rectangle,image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbFeUuNms8ZXLng_Wq5COfqX3FbTFxzF0rizYOzMKzVi3CkGp4'),fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Color.fromRGBO(32, 69, 99, 1)),
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
                return Organizer_Registraion();
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
            Column(children: [Text('Create New Account',style: TextStyle(color: Color.fromRGBO(32, 69, 99, 1)),)],)
          ],
        ),
      ),
    );
  }
}
