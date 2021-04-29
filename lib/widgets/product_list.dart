import 'package:coffee_app/data/product.dart';
import 'package:coffee_app/pages/product_page.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    Key key,
    @required this.product,
  }) : super(key: key);

  final List<Product> product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 315,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: product.length,
        itemBuilder: (context, index) {
          return Hero(
            tag: 'photo$index',
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductPage(
                            index: index,
                            image: product[index].image,
                            title: product[index].title,
                            desc: product[index].desc,
                            rating: product[index].rating,
                            price: product[index].price,
                          )),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(top: 10, right: 20),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      colors: <Color>[
                        Color(0xff303030).withOpacity(.3),
                        Color(0xff0E1116).withOpacity(.9),
                      ],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              product[index].image,
                              scale: 6,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  colors: <Color>[
                                    Color(0xff303030).withOpacity(.3),
                                    Color(0xff0E1116).withOpacity(.9),
                                  ],
                                ),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffD17842),
                                    size: 18,
                                  ),
                                  Text(
                                    product[index].rating,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product[index].title,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              product[index].desc,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 150,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$ ${product[index].price} ',
                                    style: TextStyle(
                                        color: Color(0xffD17842), fontSize: 20),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      color: Color(0xffD17842),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
