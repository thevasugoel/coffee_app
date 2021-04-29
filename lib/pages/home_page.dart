import 'package:coffee_app/data/product.dart';
import 'package:coffee_app/widgets/article.dart';
import 'package:coffee_app/widgets/build_category.dart';
import 'package:coffee_app/widgets/header_text.dart';
import 'package:coffee_app/widgets/product_list.dart';
import 'package:coffee_app/widgets/search_bar.dart';
import 'package:coffee_app/widgets/top_bar.dart';
import 'package:flutter/material.dart';

import '../menu.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Menu> menu = <Menu>[
    Menu(title: 'Cappuccino'),
    Menu(title: 'Espresso'),
    Menu(title: 'Latte'),
    Menu(title: 'Flat White'),
    Menu(title: 'Caramel Latte'),
  ];

  List<Product> product = <Product>[
    Product(
      image: 'assets/cappuccino.jpg',
      rating: '4.5',
      title: 'Cappucino',
      desc: 'With Oat Milk',
      price: '4.20',
    ),
    Product(
      image: 'assets/espresso.jpg',
      rating: '4.3',
      title: 'Espresso',
      desc: 'With Chocolate',
      price: '3.14',
    ),
    Product(
      image: 'assets/latte.jpg',
      rating: '4.8',
      title: 'Latte',
      desc: 'With Less Sugar',
      price: '7.20',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBar(),
            HeaderText(),
            SizedBox(
              height: 40,
            ),
            SearchBar(),
            SizedBox(
              height: 40,
            ),
            Category(menu: menu),
            ProductList(product: product),
            SizedBox(
              height: 10,
            ),
            Text(
              'Special for you',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Article(),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
