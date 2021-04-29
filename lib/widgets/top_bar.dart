import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'button.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Button(
            child: Icon(
              Ionicons.md_apps,
              color: Colors.white,
            ),
            padd: 10,
          ),
          ClipRRect(
            child: Image.asset(
              'assets/profile.jpg',
              scale: 15,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ],
      ),
    );
  }
}
