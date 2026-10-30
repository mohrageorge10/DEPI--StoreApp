import 'package:flutter/material.dart';
import 'package:rertail/core/helpers/app_elevated_button.dart';
import 'package:rertail/features/home/widgets/list_tile_cart.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    List deals = [
      {"name": "Red Apple", "image": "assets/apple.png", "price": 4.99},
      {"name": "Original Banana", "image": "assets/banana.png", "price": 5.99},
      {"name": "Avocado Bowl", "image": "assets/avocado.png", "price": 24.0},
      {"name": "Salmon", "image": "assets/salmon.png", "price": 50.0},
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Cart",
          style: TextStyle(
            color: Color(0xffFF5E00),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: deals.length,
                itemBuilder: (context, index) =>
                    ListTileCart(deals: deals, index: index),
              ),
            ),
            AppElevatedButton(onPressed: () {}, txt: "Checkout"),
          ],
        ),
      ),
    );
  }
}
