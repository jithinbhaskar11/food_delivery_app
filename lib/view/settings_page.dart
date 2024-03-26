import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/controller/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(title: Text('Settings'),centerTitle: true,
      backgroundColor: Theme.of(context).colorScheme.background,),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(25),
            margin: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Dark mode',style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,fontWeight: FontWeight.bold),),
                CupertinoSwitch(value: Provider.of<ThemeProvider>(context,listen: false).isDarkMode,
                    onChanged: (value)=>Provider.of<ThemeProvider>(context,listen: false).toggleTheme())
              ],
            ),
          )
        ],
      ),
    );
  }
}
