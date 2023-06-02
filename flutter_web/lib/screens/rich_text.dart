import 'package:flutter/material.dart';

class RichTextPage extends StatelessWidget {
  const RichTextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: RichText(
      text: TextSpan(
        text: 'Hello ',
        style: TextStyle(fontWeight: FontWeight.w100, color: Colors.red),
        children: const <TextSpan>[
          TextSpan(
              text: 'bold',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
          TextSpan(text: ' world!'),
        ],
      ),
    ));
  }
}
