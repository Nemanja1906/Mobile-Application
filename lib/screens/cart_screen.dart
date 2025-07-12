import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/assets_manager.dart';
import 'package:flutter_application_1/widgets/empty_widget_bag.dart';
import 'package:flutter_application_1/widgets/subtitles_text.dart';
import 'package:flutter_application_1/widgets/titles_text.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EmptyBagWidget(
        imagePath: AssetsManager.shoppingBasket,
        title: "Your cart is empty",
        subtitle:
            "Looks like your cart is empty.\nAdd something and make me happy.",
        buttonText: "Shop Now",
      ),
    );
  }
}
