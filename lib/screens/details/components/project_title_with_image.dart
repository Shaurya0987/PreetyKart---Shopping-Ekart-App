import 'package:flutter/material.dart';
import 'package:preetykart/Provider/ThemeProvider.dart';
import 'package:preetykart/constants.dart';
import 'package:preetykart/modals/product.dart';
import 'package:provider/provider.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(
            "Aristocratic Hand Bag",
            style: TextStyle(
              color: context.watch<Themeprovider>().isDark
                  ? Colors.white
                  : Colors.black,
              fontSize: 22,
            ),
          ),
          Text(
            product.title,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: kDefultPaddin),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Price\n",
                      style: TextStyle(
                        color: context.watch<Themeprovider>().isDark
                            ? Colors.white
                            : Colors.black,
                        fontSize: 21,
                      ),
                    ),
                    TextSpan(
                      text: "\$${product.price}",
                      style: TextStyle(
                        color: context.watch<Themeprovider>().isDark
                            ? Colors.white
                            : Colors.black,
                        fontSize: 37,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: kDefultPaddin),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(product.image, fit: BoxFit.fill),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
