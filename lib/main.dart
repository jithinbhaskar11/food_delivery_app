import 'package:flutter/material.dart';
import 'package:food_delivery_app/controller/theme_provider.dart';
import 'package:food_delivery_app/view/login_page.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
    ChangeNotifierProvider(create: (context) => ThemeProvider(),
    child: FoodApp(),
    )
      //FoodApp()
  );
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
