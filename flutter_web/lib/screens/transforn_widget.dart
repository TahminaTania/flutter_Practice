import 'dart:math';

import 'package:flutter/material.dart';

class TransformWidget extends StatelessWidget {
  const TransformWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        SizedBox(
          child: Transform.rotate(
            angle: pi / 4,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
          ),
        ),
        SizedBox(
          child: Transform.translate(
            offset: Offset(10, 50),
            child: Container(
              height: 150,
              width: 200,
              color: Colors.blue,
            ),
          ),
        ),
        SizedBox(
          child: Transform.scale(
            scale: 0.5,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.green,
            ),
          ),
        )
      ],
    ));
  }
}
