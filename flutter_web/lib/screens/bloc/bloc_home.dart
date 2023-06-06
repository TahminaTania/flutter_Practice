import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:flutter_web/screens/bloc/bloc_event_page.dart';
import 'package:flutter_web/screens/bloc/bloc_page.dart';
import 'package:flutter_web/screens/bloc/bloc_state_page.dart';

class BlocHome extends StatelessWidget {
  const BlocHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<MypageBloc, mypageState>(
          listener: (context, state) {
            // TODO: implement listener
            if (state is pageGainedState) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("gained connection"),
                backgroundColor: Colors.blue,
              ));
            } else
              ({
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("LOST connection"),
                  backgroundColor: Colors.red,
                ))
              });
          },
          builder: (context, state) {
            if (state is pageGainedState) {
              return Text("Gained Page");
            } else if (state is pageLostState) {
              return Text("Lost Page");
            } else {
              return Text("Landing page");
            }
          },
        ),
      ),
    );
  }
}
