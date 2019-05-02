import 'package:flutter/material.dart';
import 'login_page.dart';
import 'register_page.dart';

class LogRegTabBody extends StatelessWidget {
  final TabController tabController;

  LogRegTabBody({this.tabController});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      padding: EdgeInsets.only(top: 15.0),
      child: TabBarView(
        controller: tabController,
        children: <Widget>[
          LoginPage(),
          RegisterPage(),
        ],
      ),
    );
  }
}
