import 'package:flutter/material.dart';
import 'package:preetykart/Provider/ThemeProvider.dart';
import 'package:preetykart/constants.dart';
import 'package:preetykart/modals/product.dart';
import 'package:preetykart/screens/details/components/add_to_cart.dart';
import 'package:preetykart/screens/details/components/colorAndSize.dart';
import 'package:preetykart/screens/details/components/counter_with_fav_Button.dart';
import 'package:preetykart/screens/details/components/description.dart';
import 'package:preetykart/screens/details/components/project_title_with_image.dart';
import 'package:provider/provider.dart';

class BodyScreen extends StatelessWidget {
  final Product product;
  const BodyScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,   // ✔ Full screen height (prevents infinite height)
            child: Stack(
              children: [
                // BACKGROUND CONTAINER
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefultPaddin,
                    right: kDefultPaddin,
                    bottom: kDefultPaddin,
                  ),

                  // ❌ Removed fixed height → prevents overflow
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                    color: context.watch<Themeprovider>().isDark
                        ? Colors.black
                        : Colors.white,
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      colorAndWidget(product: product),
                      SizedBox(height: kDefultPaddin / 2),
                      Description(product: product),
                      SizedBox(height: kDefultPaddin),
                      CounterWithfavEmoji(),
                      SizedBox(height: kDefultPaddin),
                      AddToCart(product: product),
                    ],
                  ),
                ),

                // PRODUCT IMAGE + TITLE
                ProductTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
