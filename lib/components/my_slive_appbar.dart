import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget title;
  final Widget child;
  const MySliverAppBar({super.key,
  required this.title,
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      collapsedHeight: 120,
      expandedHeight: 320,
      pinned: true,
      centerTitle: true,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
      ],
      title: Text('Oregano'),
      flexibleSpace: FlexibleSpaceBar(
        title: title,
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: child,
        ),
        centerTitle: true,
        titlePadding: EdgeInsets.only(left: 0,right: 0,top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
