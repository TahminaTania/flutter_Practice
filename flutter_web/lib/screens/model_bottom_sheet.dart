import 'package:flutter/material.dart';
class ModelBottomSheet extends StatelessWidget {
const ModelBottomSheet({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SafeArea(child: ElevatedButton(onPressed: 
    (){
      showModalBottomSheet(context: context, builder: (context){
        return Container(
 height: 300,
 child: Column(children: <Widget> [
  ListTile(title: Text("One"),
  subtitle: Text("thisis no one"),
  trailing: Icon(Icons.abc),),
  ListTile(title: Text("One"),
  subtitle: Text("thisis no one"),
  trailing: Icon(Icons.abc),),
  ListTile(title: Text("One"),
  subtitle: Text("thisis no one"),
  trailing: Icon(Icons.abc),),
  

 ]),
        );
      });
    }, child: Text("Click To see")),

    );
  }
}