import 'dart:math';

import 'package:flutter/material.dart';

class CustomDialouge extends StatelessWidget {
  const CustomDialouge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Stack(
                          alignment: Alignment.topCenter,
                          clipBehavior: Clip.none,
                          //works as--> overflow:overflow.visible,
                          children: <Widget>[
                            Container(
                              height: 500,
                              width: 500,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 20,
                                    child: Text("name"),
                                  ),
                                  SizedBox(
                                    height: 100,
                                    child: Text(
                                        "body ......................................................... body"),
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text("Ok")),
                                ],
                              ),
                            ),
                            Positioned(
                                top: -50,
                                child: CircleAvatar(
                                  radius: 50,
                                  child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                      child: Image.asset("images/profile.png")),
                                ))
                          ]));
                });
          },
          child: Text("click")),
    );
  }
}
