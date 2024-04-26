import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_receipt.dart';

class DeliveryPage extends StatelessWidget {
  const DeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery details'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          MyReceipt()
        ],
      ),
    );
  }
}
