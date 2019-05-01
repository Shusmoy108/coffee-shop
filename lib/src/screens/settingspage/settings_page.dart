import 'package:flutter/material.dart';
import 'profile_widget.dart';

class SettingPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Color.fromRGBO(220, 20, 60, 1.0),
        elevation: 0.0,
        leading: Icon(Icons.settings),
      ),
      body: ListView(
        children: <Widget>[
          ProfileWidget(),
        ],
      ),
    );
  }
}
