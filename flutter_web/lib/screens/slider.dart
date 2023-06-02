import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);
  @override
  _SliderState createState() => _SliderState();
}

class _SliderState extends State<SliderPage> {
    var size = 20.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Text size will change",
              style: TextStyle(fontSize: size),
            ),
            Slider(
                min: 10,
                max: 50,
                value: size,
                onChanged: (value) {
                  setState(() {
                    size = value;
                    print(size);
                  });
                })
          ]),
    ));;
  }
}







//note: slider should be inside material widgets like-Scaffold,
//note-2: it didn't work when i used stateless widget