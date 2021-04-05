import 'package:flutter/cupertino.dart';

class ButtonsocialWidget extends StatefulWidget {
  @override
  _ButtonsocialWidgetState createState() => _ButtonsocialWidgetState();
}

class _ButtonsocialWidgetState extends State<ButtonsocialWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 48,
        height: 48,

        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 12,
                  left: 12,
                  child: null
              ),
            ]
        )
    );
  }
}
