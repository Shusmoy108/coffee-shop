import 'package:flutter/material.dart';
import 'log_reg_tab_bar.dart';
import 'log_reg_tab_body.dart';

class LoginRegisterPage extends StatefulWidget {
  @override
  _LoginRegisterPageState createState() => _LoginRegisterPageState();
}

class _LoginRegisterPageState extends State<LoginRegisterPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(0.0),
        children: <Widget>[
          Container(
            width: deviceWidth,
            height: deviceHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'images/starbucks.jpg',
                ),
                fit: BoxFit.fill,
              ),
            ),
            padding: EdgeInsets.fromLTRB(40.0, deviceHeight * 0.15, 40.0, 0.0),
            child: Column(
              children: <Widget>[
                LogRegTabBar(
                  tabController: _tabController,
                ),
                LogRegTabBody(
                  tabController: _tabController,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
