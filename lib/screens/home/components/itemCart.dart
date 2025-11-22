import 'package:flutter/material.dart';
import 'package:preetykart/constants.dart';
import 'package:preetykart/modals/product.dart';

class ItemCart extends StatelessWidget {
  final Product product;
  final VoidCallback press;

  const ItemCart({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(kDefultPaddin),
            // height: 180,
            // width: 160,
            decoration: BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(product.image),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefultPaddin / 4),
            child: Text(
              product.title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
