import 'package:flutter/material.dart';

import 'card_counter.dart';

class CounterWithFavouriteBetween extends StatelessWidget {
  const CounterWithFavouriteBetween({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CardCounter(),
        Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(color: Colors.pink, shape: BoxShape.circle),
          child: Center(
            child: Icon(
              Icons.heart_broken,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
