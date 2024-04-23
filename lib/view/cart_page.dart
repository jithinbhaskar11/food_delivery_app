import 'package:food_delivery_app/components/my_cart_tile.dart';
import 'package:food_delivery_app/model/restaurant_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        final userCart = restaurant.cartlist;

        return Scaffold(
          appBar: AppBar(
            title: Text('Cart'),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          body: Column(
            children: [
              Expanded(child: ListView.builder(
                itemCount: userCart.length,
                itemBuilder: (context, index) {
                  final cartModel = userCart[index];
                  return MyCartTile(cartModel: cartModel);
                },
              ))
            ],
          ),
        );
      },
    );
  }
}
