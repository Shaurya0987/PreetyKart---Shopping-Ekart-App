import 'package:flutter/material.dart';
import 'package:preetykart/constants.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => __CategoriesStateState();
}

class __CategoriesStateState extends State<Categories> {
  List<String> categories = [
    "Hand bag",
    "Jewellery",
    "FootWear",
    "Dresses",
    "Make Up",
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefultPaddin),
      child: SizedBox(
        height: 55,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex=index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefultPaddin),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,          line to the start not center under the Text
          children: [
            Text(
              categories[index],
              style: TextStyle(fontWeight: FontWeight.bold, color: selectedIndex==index?kTextColor:kTextLightColor),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefultPaddin/4),
              height: 2,
              width: 30,
              color: selectedIndex==index?Colors.black:Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
