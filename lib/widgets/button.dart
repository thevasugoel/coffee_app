import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatefulWidget {
  bool val = false;
  final Widget child;
  final double padd;
  final bool nav;
  Button({this.child, this.padd, this.nav});

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  Color color1 = Color(0xff232730);
  Color color2 = Color(0xff11141A);

  @override
  void setState(fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (widget.nav == true) {
            Navigator.pop(context);
          }

          widget.val = !widget.val;
          if (widget.val == false) {
            color1 = Color(0xff232730);
            color2 = Color(0xff11141A);
          } else {
            color2 = Color(0xff232730);
            color1 = Color(0xff11141A);
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft, colors: [
            color1,
            color2,
          ]),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(widget.padd),
        child: widget.child,
      ),
    );
  }
}
