import 'package:flutter/material.dart';
import 'package:preetykart/constants.dart';
import 'package:preetykart/modals/product.dart';
import 'package:preetykart/screens/details/components/details_screen.dart';
import 'package:preetykart/screens/home/components/Categories.dart';
import 'package:preetykart/screens/home/components/itemCart.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefultPaddin),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),

        Categories(),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                mainAxisSpacing: kDefultPaddin,
                crossAxisSpacing: kDefultPaddin
              ),
              itemBuilder: (BuildContext context, int index) {
                return ItemCart(
                  product: products[index],
                  press: () =>Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(product: products[index])),)
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

