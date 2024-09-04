import 'dart:io';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';


import 'Organizer_assignmnt_event_appeal.dart';
import 'Organizer_evnet_and_result.dart';

class Organizer_add_result extends StatefulWidget {
  const Organizer_add_result({super.key});

  @override
  State<Organizer_add_result> createState() => _Organizer_add_resultState();
}

class _Organizer_add_resultState extends State<Organizer_add_result> {
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

  String _selectedItem = '  Oppana';

  final List<String> _options = [
    '  Oppana',
    'Kolkali',
    'Mohiniyattam',
    'Kuchupidi',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20,right: 20),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Organizer_event_and_result();
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
                    'Add Result',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Container(
                  height: 60,
                  width: 360,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  child: DropdownButton<String>(
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: Icon(
                        Icons.keyboard_arrow_down_outlined,
                        size: 30,
                      ),
                    ),
                    value: _selectedItem,
                    items: _options.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedItem = newValue!;
                      });
                    },
                  ),
                ),
                SizedBox(height: 20),
              ],
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
                Stack(
                  children: [
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
                      padding: const EdgeInsets.only(top: 300, left: 100),
                      child: ElevatedButton(
                          onPressed: () {
                            _pickImage();
                          },
                          child: Text('Pick image')),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Organizer_Assignment_event_Appeal_nav();
                    },));
                  },
                    child: Container(
                      width: 380,
                      height: 60,
                      decoration: BoxDecoration(color: Color.fromRGBO(32, 69,99, 1)),
                      child: Center(child: Text('Submit',style: GoogleFonts.poppins(fontWeight: FontWeight.bold,color: Colors.white),)),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
