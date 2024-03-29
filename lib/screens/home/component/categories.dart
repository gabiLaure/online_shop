import 'package:flutter/material.dart';
import '../../../constant.dart';

class Categories extends StatefulWidget {
  Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Hand-bag",
    "Jewellery",
    "Footwear",
    "Dresses",
    "Wigs"
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          itemBuilder: (context, index) => buildCategory(index),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            selectedIndex = index;
          },
        );
      },
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categories[index],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color:
                        selectedIndex == index ? kTextColor : kTextLightColor),
              ),
              Container(
                  margin: EdgeInsets.only(top: kDefaultPadding / 4),
                  height: 1,
                  width: 30,
                  color: selectedIndex == index
                      ? Colors.black
                      : Colors.transparent)
            ],
          )),
    );
  }
}
