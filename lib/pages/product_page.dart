import 'package:coffee_app/widgets/button.dart';
import 'package:coffee_app/widgets/product_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

// ignore: must_be_immutable
class ProductPage extends StatefulWidget {
  final String image;
  final int index;
  final String title;
  final String desc;
  final String rating;
  final String price;
  ProductPage(
      {this.index, this.image, this.title, this.desc, this.rating, this.price});

  bool val = false;

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  var size = ['S', 'M', 'L'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 90,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        decoration: BoxDecoration(
          gradient: SweepGradient(
            transform: GradientRotation(3.14 / 4),
            colors: <Color>[
              Color(0xff303030).withOpacity(.3),
              Color(0xff0E1116).withOpacity(.9),
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Price',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Text(
                  '\$ ${widget.price}',
                  style: TextStyle(color: Color(0xffD17842), fontSize: 25),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topLeft, colors: [
                  Color(0xffD17842),
                  Color(0xffD17842),
                ]),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
              child: Text(
                'Buy Now',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xff010714),
      body: SingleChildScrollView(
        child: Hero(
          tag: 'photo$widget.index',
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductView(widget: widget),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Description',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'A cappuccino is an espresso-based coffee drink that originated in Italy, and is traditionally prepared with steamed milk foam. Variations of the drink involve the use of cream instead of milk, using non-dairy milks, and flavoring with cinnamon or chocolate powder.',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Size',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: size.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            decoration: BoxDecoration(
                              color: selectedIndex == index
                                  ? Colors.transparent
                                  : Color(0xff232730),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: selectedIndex == index
                                      ? Color(0xffD17842)
                                      : Colors.transparent),
                            ),
                            child: Center(
                              child: Text(
                                size[index],
                                style: TextStyle(
                                    color: selectedIndex == index
                                        ? Color(0xffD17842)
                                        : Colors.white,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
