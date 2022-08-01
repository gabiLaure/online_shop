import 'package:flutter/material.dart';
import 'package:online_shop_app/screens/details/component/detail_body.dart';
import '../../model/products.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: DetailBody(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.grey.shade100,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.grey.shade100,
            ),
            onPressed: () {},
          ),
        ]);
  }
}
