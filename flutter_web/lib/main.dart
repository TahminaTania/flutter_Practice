import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web/screens/bloc/bloc_home.dart';
import 'package:flutter_web/screens/bloc/bloc_page.dart';
//import 'package:flutter_web/screens/backdrop_filter.dart';
import 'package:flutter_web/screens/transforn_widget.dart';
//import 'package:flutter_web/screens/animated_cross-fade.dart';
//import 'package:flutter_web/screens/expansion_tile.dart';
//import 'package:flutter_web/screens/dismissible.dart';
//import 'package:flutter_web/screens/rich_text.dart';
//import 'package:flutter_web/screens/slider.dart';
//import 'package:flutter_web/screens/snack_bar.dart';
//import 'package:flutter_web/screens/toast.dart';
//import 'package:flutter_web/screens/custom_dialouge.dart';
//import 'package:flutter_web/screens/curved_navigation.dart';
//import 'package:flutter_web/screens/alert_dialouge.dart';
//import 'package:flutter_web/screens/image_upload.dart';
// import 'package:flutter_web/screens/model_bottom_sheet.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       // home: const MyHomePage(),
//       // home:ModelBottomSheet()
//       //home: AlertDialouge()
//       // home:CurvedNavigation()
//       //home: CustomDialouge()
//       //home: SnackBarPage() didn't worked on web
//       //home: ToastPage(),
//       //home:SliderPage()
//       //home:RichTextPage()
//       //home: DismissiblePage()
//       // home: AnimatedCrossFadePage()
//       // home: ExpansionTileExample()
//       // home: BackDropPage()
//       //home: TransformWidget(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MypageBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: BlocHome(),
      ),
    );
  }
}
