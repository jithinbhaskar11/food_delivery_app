import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home',style: TextStyle(color: Theme.of(context).colorScheme.primary),),
        centerTitle: true,
      ),
      drawer: MyDrawer()
    );
  }
}
