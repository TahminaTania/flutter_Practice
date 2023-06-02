import 'package:file_picker/file_picker.dart';
import 'dart:typed_data';
import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHome createState() => _MyHome();
}

class _MyHome extends State<MyHomePage> {

   PlatformFile? _imageFile;

  // Method to pick and display an image file
  Future<void> _pickImage() async {
    try {
      // Pick an image file using file_picker package
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.image,
      );

      // If user cancels the picker, do nothing
      if (result == null) return;

      // If user picks an image, update the state with the new image file
      setState(() {
        _imageFile = result.files.first;
      });
    } catch (e) {
      // If there is an error, show a snackbar with the error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Web Practice"),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
          child: Container(
        height: 500,
        width: screenWidth,
        color: Colors.grey,
        child:(_imageFile != null)?
              Image.memory(
                Uint8List.fromList(_imageFile!.bytes!),
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ):(Text("SElect Image")),
      )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.1),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.camera)),
          FloatingActionButton(
              onPressed: () {
                _pickImage();
              },
              child: Icon(Icons.image))
        ]),
      ),
    );
  }
}
