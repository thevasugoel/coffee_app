import 'package:flutter/material.dart';

import '../menu.dart';

class Category extends StatefulWidget {
  const Category({
    Key key,
    @required this.menu,
  }) : super(key: key);

  final List<Menu> menu;

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 60,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.menu.length,
          itemBuilder: (context, index) {
            return buildContainer(index);
          },
        ),
      ),
    );
  }

  Widget buildContainer(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.only(right: 20),
        child: Column(
          children: [
            Text(
              widget.menu[index].title,
              style: TextStyle(
                  color:
                      selectedIndex == index ? Color(0xffD17842) : Colors.grey,
                  fontSize: 18,
                  fontFamily: 'Header'),
            ),
            SizedBox(
              height: 8,
            ),
            selectedIndex == index
                ? Container(
                    child: Center(
                      child: CustomPaint(
                        painter: CirclePainter(),
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Color(0xffD17842)
      ..strokeWidth = 15;

    Offset center = Offset(size.width / 2, size.height / 2);

    canvas.drawCircle(center, 5, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
