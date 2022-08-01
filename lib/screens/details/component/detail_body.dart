import 'package:flutter/material.dart';
import 'package:online_shop_app/constant.dart';

import 'package:online_shop_app/model/products.dart';

import 'add_to_cart.dart';
import 'card_counter.dart';
import 'color_and_size.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';
import 'product_title_with_image.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    //it provides us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        SizedBox(
            height: size.height,
            child: Stack(children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.33),
                padding: EdgeInsets.only(
                    top: size.height * 0.05,
                    left: kDefaultPadding,
                    right: kDefaultPadding),
                //height: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
                child: Column(
                  children: [
                    ColorandSize(product: product),
                    Description(product: product),
                    CounterWithFavouriteBetween(),
                    AddToCart(product: product),
                  ],
                ),
              ),
              ProductTitleWithImage(product: product)
            ]))
      ]),
    );
  }
}
