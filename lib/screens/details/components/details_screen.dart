import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:preetykart/constants.dart';
import 'package:preetykart/modals/product.dart';
import 'package:preetykart/screens/details/components/body.dart';


class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: BodyScreen(product: product)
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: SvgPicture.asset('assets/icons/back.svg',color: Colors.white,)),
      actions: [
        IconButton(onPressed: (){},
         icon: SvgPicture.asset('assets/icons/cart.svg')),
        IconButton(onPressed: (){},
         icon: SvgPicture.asset('assets/icons/search.svg')),
         SizedBox(width: kDefultPaddin/2,)
      ],
    );
  }
}
