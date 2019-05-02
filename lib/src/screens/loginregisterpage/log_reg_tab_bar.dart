import 'package:flutter/material.dart';

class LogRegTabBar extends StatelessWidget {
  final TabController tabController;

  LogRegTabBar({this.tabController});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5.0),
          topRight: Radius.circular(5.0),
        ),
      ),
      child: TabBar(
        labelColor: Colors.black,
        labelStyle: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
        indicatorColor: Colors.redAccent,
        unselectedLabelColor: Colors.grey,
        unselectedLabelStyle: TextStyle(
          fontSize: 13.0,
        ),
        controller: tabController,
        tabs: <Tab>[
          Tab(
            text: 'Login',
          ),
          Tab(
            text: 'Register',
          ),
        ],
      ),
    );
  }
}
