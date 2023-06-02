import 'package:flutter/material.dart';

class AlertDialouge extends StatelessWidget {
const AlertDialouge({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      child: ElevatedButton(onPressed: () { 
        showDialog(context: context, builder: (context){
          return AlertDialog(
            title: Text("Alert"),
            content: Text("This the content"),
            actions: [ElevatedButton(onPressed:(){Navigator.pop(context);}, child: Text("Ok"))],
          );
        }); },
      child: Text("click") ),
    );
  }
}

