import 'dart:io';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'Organizer_assignmnt_event_appeal.dart';


class Organizer_event_detail extends StatefulWidget {
  const Organizer_event_detail({super.key});

  @override
  State<Organizer_event_detail> createState() => _Organizer_event_detailState();
}

class _Organizer_event_detailState extends State<Organizer_event_detail> {
  File? _image;

  Future<void> _pickImage() async {
    final pickedFile =
    await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Organizer_Assignment_event_Appeal_nav();
                        },
                      ));
                    },
                    child: Container(
                        height: 30,
                        width: 30,
                        child: Icon(Icons.arrow_back_ios_sharp))),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text(
                    'Event Detail',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Text(
                  'Mohiniyattam',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 80),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Date',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text('18/07/23')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Stage',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text('02')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Time',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text('1:30 pm')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Text('Ground')
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Result',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(children: [
                  Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: _image == null
                        ? Center(child: Text(''))
                        : Image.file(
                      _image!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 300,left: 100),
                    child: ElevatedButton(onPressed: () {
                      _pickImage();
                    }, child: Text('Pick Image')),
                  )

                ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
