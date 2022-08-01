import 'package:flutter/material.dart';
import 'package:online_shop_app/constant.dart';

import '../../../model/products.dart';
import '../../details/detail_screen.dart';
import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            "Orions Market",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      Categories(),
      Expanded(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: kDefaultPadding,
                    crossAxisSpacing: kDefaultPadding,
                    crossAxisCount: 2,
                    childAspectRatio: 0.67),
                itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                      press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailScreen(product: products[index]),
                        ),
                      ),
                    ))),
      )
    ]);
  }
}
