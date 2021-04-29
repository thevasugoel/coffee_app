import 'package:flutter/material.dart';

class Article extends StatelessWidget {
  const Article({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: SweepGradient(
          transform: GradientRotation(3.14 / 4),
          colors: <Color>[
            Color(0xff303030).withOpacity(.3),
            Color(0xff0E1116).withOpacity(.9),
          ],
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/espresso.jpg',
              scale: 9,
            ),
          ),
          Container(
            width: 211,
            height: 120,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '5 Coffee beans you must try!',
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'By - The Coffee Bean',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
