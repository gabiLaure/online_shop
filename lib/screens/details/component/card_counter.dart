import 'package:flutter/material.dart';

import '../../../constant.dart';

class CardCounter extends StatefulWidget {
  const CardCounter({Key? key}) : super(key: key);
  @override
  State<CardCounter> createState() => _CardCounterState();
}

class _CardCounterState extends State<CardCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      buildOutlineButton(
        icon: Icons.remove,
        press: () {
          if (numOfItems > 1) {
            setState(() {
              numOfItems--;
            });
          }
        },
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Text(numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.black38)),
      ),
      buildOutlineButton(
        icon: Icons.add,
        press: () {
          setState(() {
            numOfItems++;
          });
        },
      )
    ]);
  }
}

Widget buildOutlineButton({required IconData icon, required Function() press}) {
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    onPressed: press,
    child: Icon(icon),
  );
}
