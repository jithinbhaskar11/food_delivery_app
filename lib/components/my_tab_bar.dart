import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key, required this.tabController});
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: [
          Tab(
            text: '1st tab',
          ),
          Tab(
            text: '2nd tab',
          ),
        ],
      ),
    );
  }
}
