import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:preetykart/Provider/CartProvider.dart';
import 'package:preetykart/constants.dart';
import 'package:preetykart/modals/product.dart';
import 'package:provider/provider.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    final cartProvider = context.watch<CartProvider>();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefultPaddin),
      child: Row(
        children: [
          // ADD TO CART BUTTON
          Container(
            margin: const EdgeInsets.only(right: kDefultPaddin),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: product.color),
            ),
            child: IconButton(
              onPressed: () {
                cartProvider.addItem(product);   
                print("Added in Cart");
              },
              icon: SvgPicture.asset(
                "assets/icons/add_to_cart.svg",
                color: product.color,
              ),
            ),
          ),

          // BUY NOW BUTTON
          Expanded(
            child: SizedBox(
              height: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: product.color,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "BUY NOW",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
