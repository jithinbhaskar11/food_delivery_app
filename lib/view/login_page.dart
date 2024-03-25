import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock_open,
              size: 100,
            color: Theme.of(context).colorScheme.inversePrimary ,
            ),
            SizedBox(height: 25,),
            Text('Food Delivery App',
            style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,fontWeight: FontWeight.bold,fontSize: 15,
            )
          ],
        ),
      )
    );
  }
}
