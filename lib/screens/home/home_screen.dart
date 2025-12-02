import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:preetykart/Provider/AddToCartPage.dart';
import 'package:preetykart/Provider/CartProvider.dart';
import 'package:preetykart/Provider/ThemeProvider.dart';
import 'package:preetykart/constants.dart';
import 'package:preetykart/modals/product.dart';
import 'package:preetykart/screens/details/components/add_to_cart.dart';
import 'package:preetykart/screens/home/components/body.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    final themeProvider = context.watch<Themeprovider>();
    final cartProvider = context.watch<CartProvider>();

    return AppBar(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/back.svg"),
      ),
      actions: [
        // SEARCH ICON
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: kTextColor,
          ),
        ),

        // ⭐ CART ICON WITH BADGE ⭐
        Stack(
          clipBehavior: Clip.none,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) =>  AddToCartScreen()),
                );
              },
              icon: SvgPicture.asset(
                "assets/icons/cart.svg",
                color: kTextColor,
              ),
            ),

            // BADGE (Only show when items exist)
            if (cartProvider.count > 0)
              Positioned(
                right: 6,
                top: 6,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    cartProvider.count.toString(),
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
          ],
        ),

        // THEME TOGGLE BUTTON
        IconButton(
          onPressed: () {
            themeProvider.toggleTheme();
          },
          icon: Icon(
            themeProvider.isDark ? Icons.light_mode : Icons.dark_mode,
            color: kTextColor,
          ),
        ),
      ],
    );
  }
}
