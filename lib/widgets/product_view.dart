import 'package:coffee_app/pages/product_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'button.dart';

class ProductView extends StatelessWidget {
  const ProductView({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final ProductPage widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 530,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        child: Stack(
          children: [
            Image.asset(
              widget.image,
            ),
            Positioned(
              top: 40,
              left: 20,
              child: Button(
                nav: true,
                child: Icon(
                  Ionicons.md_arrow_back,
                  color: Colors.grey,
                ),
                padd: 10,
              ),
            ),
            Positioned(
              top: 40,
              right: 20,
              child: Button(
                child: Icon(
                  Ionicons.md_heart,
                  color: Color(0xffD17842),
                ),
                padd: 10,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      //        stops: [0.1, 0.3, 0.7, 1],
                      transform: GradientRotation(3.14 / 4),
                      colors: <Color>[
                        Color(0xff45281E),
                        Color(0xff1E1514),
                        Color(0xff44281E),
                        Color(0xff301D18),
                        Color(0xff2A1A17),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          widget.desc,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xffD17842),
                              size: 24,
                            ),
                            Text(
                              " " + widget.rating + " ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 2),
                              child: Text(
                                "(6,956)",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Button(
                              child: Icon(
                                FlutterIcons.coffee_faw,
                                color: Color(0xffD17842),
                              ),
                              padd: 15,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Button(
                              child: Icon(
                                FontAwesome.tint,
                                color: Color(0xffD17842),
                              ),
                              padd: 15,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Button(
                          child: Text(
                            'Medium Roasted',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          padd: 15,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
