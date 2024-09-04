
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'Organizer_appealDetail.dart';

class Organizer_appeal_list extends StatefulWidget {
  const Organizer_appeal_list({super.key});

  @override
  State<Organizer_appeal_list> createState() => _Organizer_appeal_listState();
}

class _Organizer_appeal_listState extends State<Organizer_appeal_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back_ios_sharp),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text(
                    'Appeal List',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(children: [
                    InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Organizer_appeal_detail();
                      },));
                    },
                      child: Container(
                        height: 60,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(color: Colors.black),
                        ),
                        child: Stack(
                          children: [ ListTile(
                            leading: Container(height: 40,width: 40,decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvuKNWIeuQCGJOKip0VFyOZb9ybGARlzucqA&s'))),),
                            title: Text(
                              'Name',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            subtitle: Text('ID Number'),
                          ),
                            Padding(
                              padding: const EdgeInsets.only(top: 25,left:260),
                              child: Text('Accepeted',style: GoogleFonts.poppins(color: Colors.green)),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,)
                  ],);
                },
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
