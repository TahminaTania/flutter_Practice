import 'package:flutter/material.dart';
import 'package:flutter_web/screens/pages/page1.dart';
import 'package:flutter_web/screens/pages/page2.dart';
import 'package:flutter_web/screens/pages/page3.dart';

class BackDropPage extends StatefulWidget {
  @override
  _BackDropPageState createState() => _BackDropPageState();
}

class _BackDropPageState extends State<BackDropPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        title: Text("Flutter BackdropFilter Widget Demo"),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ElevatedButton(
              child: Text(
                'Image Blur',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Page1()));
              },
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              child: Text(
                'Text Blur',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Page2()));
              },
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              child: Text(
                'Image & Text Blur',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Page3()));
              },
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      )), //center
    );
  }
}
