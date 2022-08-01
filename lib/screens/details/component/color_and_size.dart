import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../model/products.dart';

class ColorandSize extends StatelessWidget {
  const ColorandSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Colors'),
              Row(children: [
                ColorDot(
                  color: Colors.red,
                  isSelected: true,
                ),
                ColorDot(
                  color: Colors.blue,
                ),
                ColorDot(
                  color: Colors.yellow,
                )
              ])
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(style: TextStyle(color: kTextColor), children: [
            TextSpan(text: "Size\n"),
            TextSpan(
                text: "${product.size} cm",
                style: Theme.of(context).textTheme.headline5?.copyWith(
                    fontWeight: FontWeight.bold, color: kTextLightColor))
          ])),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key? key,
    required this.color,
    // by defaullt is selected is false
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: kDefaultPadding / 4, right: kDefaultPadding / 2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isSelected ? color : Colors.transparent)),
      child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
    );
  }
}
