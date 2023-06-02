import 'package:flutter/material.dart';

class AnimatedCrossFadePage extends StatefulWidget {
  const AnimatedCrossFadePage({Key? key}) : super(key: key);

  @override
  _AnimatedCrossFadeStatePage createState() => _AnimatedCrossFadeStatePage();
}

class _AnimatedCrossFadeStatePage extends State<AnimatedCrossFadePage> {
  late bool first;
  @override
  void initState() {
    // TODO: implement initState
    first = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      color: Colors.grey,
      child: AnimatedCrossFade(
        duration: const Duration(seconds: 3),
        firstChild: Container(
          height: 300,
          width: 300,
          color: Colors.red,
          child: TextButton(
            onPressed: () {
              setState(() {
                first = false;
              });
            },
            child: Text("Press"),
          ),
        ),
        secondChild:
            const FlutterLogo(style: FlutterLogoStyle.stacked, size: 100.0),
        crossFadeState:
            first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      ),
    );
  }
}
