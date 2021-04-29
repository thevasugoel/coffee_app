import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Find the best \ncoffee for you',
      style: TextStyle(
        fontSize: 40,
        fontFamily: 'Header',
        color: Colors.white,
      ),
    );
  }
}
