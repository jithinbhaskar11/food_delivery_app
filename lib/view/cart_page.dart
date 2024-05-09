import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_cart_tile.dart';
import 'package:food_delivery_app/model/restaurant_model.dart';
import 'package:food_delivery_app/view/payment_page.dart';
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

            //clear cart
            actions: [
              IconButton(onPressed: (){
                showDialog(context: context, builder: (context) => AlertDialog(
                  title: Text('Are you sure you want to clear the cart?'),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text('Cancel')),
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                      restaurant.clearCart();
                    }, child: Text('Yes'))
                  ],
                ),
                );
              }, icon: Icon(Icons.delete))
            ],
          ),

          body: userCart.isEmpty ? Center(
            child: Icon(Icons.fastfood_outlined,size: 100,color: Theme.of(context).colorScheme.primary,),
          )
              :
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Expanded(child: ListView.builder(
                itemCount: userCart.length,
                itemBuilder: (context, index) {
                  final cartModel = userCart[index];
                  return MyCartTile(cartModel: cartModel);
                },
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyButton(text: 'Go to checkout', onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentPage()));
                }),
              ),
              SizedBox(height: 20,)
            ],
          ),
        );
      },
    );
  }
}
