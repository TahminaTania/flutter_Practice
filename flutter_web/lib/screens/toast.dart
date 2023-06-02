import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class ToastPage extends StatelessWidget {
const ToastPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      builder: FToastBuilder(),
      home: Toast(),
      //navigatorKey: navigatorKey,
    );
  }
}


class Toast extends StatefulWidget {
  const Toast({ Key? key }) : super(key: key);

  @override
  _ToastState createState() => _ToastState();
}

class _ToastState extends State<Toast> {
  @override
  Widget build(BuildContext context) {
    return Container(child: 
    ElevatedButton(onPressed: (){
      Fluttertoast.showToast(
        msg: "this is toast",
        textColor:Color(0000),
        //toastLength: Toast.LENGTH_LONG,
        gravity:ToastGravity.CENTER
        );

    }, child: Text("Click")),
    );
  }
}