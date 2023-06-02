import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_web/screens/pages/page1.dart';
import 'package:flutter_web/screens/pages/page2.dart';
import 'package:flutter_web/screens/pages/page3.dart';
import 'package:flutter_web/screens/pages/page4.dart';

class CurvedNavigation extends StatefulWidget {
  const CurvedNavigation({ Key? key }) : super(key: key);

  @override
  _CurvedNavigationState createState() => _CurvedNavigationState();
}

class _CurvedNavigationState extends State<CurvedNavigation> {
    final _pages = [Page1(),Page2(),Page3(),Page4()];
    var _page=0;
    GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
      key: _bottomNavigationKey,
          items: <Widget>[
            Icon(Icons.add, size: 30),
            Icon(Icons.list, size: 30),
            Icon(Icons.compare_arrows, size: 30),
          ],
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: Column(
              children: <Widget>[
                // Text(_page.toString(), textScaleFactor: 10.0),
                Container(child: _pages[_page],),
                ElevatedButton(
                  child: Text('Go To Page of index 1'),
                  onPressed: () {
                    //Page change using state does the same as clicking index 1 navigation button
                    final CurvedNavigationBarState? navBarState =
                        _bottomNavigationKey.currentState;
                    navBarState?.setPage(1);
                  },
                )
              ],
  
    ))));
  }
}