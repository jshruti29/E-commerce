import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// ignore: camel_case_types
class Camera_Page extends StatefulWidget {
  const Camera_Page({Key? key}) : super(key: key);

  @override
  _Camera_PageState createState() => _Camera_PageState();
}

// ignore: camel_case_types
class _Camera_PageState extends State<Camera_Page> {
  Future<void> openCamera() async {
    await ImagePicker().pickImage(
      source: ImageSource.camera,
    );
  }

  Future<void> openGallery() async {
    await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlertDialog(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              const Text(
                "Select Option",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
              ),
              GestureDetector(
                child: const Text('Take a picture'),
                onTap: openCamera,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
              ),
              GestureDetector(
                child: const Text('Select from gallery'),
                onTap: openGallery,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
