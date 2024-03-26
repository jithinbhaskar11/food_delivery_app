import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Icon(Icons.fastfood,size: 100,color: Theme.of(context).colorScheme.inversePrimary,),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Divider(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            MyDrawerTile(text: 'H O M E', icon: Icons.home, onTap: (){
              Navigator.pop(context);
            }),
            MyDrawerTile(text: 'S E T T I N G S', icon: Icons.settings, onTap: (){}),
            Spacer(),
            MyDrawerTile(text: 'L O G  O U T', icon: Icons.logout, onTap: (){})
          ],
        ),
      ),
    );
  }
}
