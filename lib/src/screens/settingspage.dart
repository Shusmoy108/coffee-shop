import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Color.fromRGBO(220, 20, 60, 1.0),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 200, horizontal: 40.0),
        child: Center(
          child: Text('Profile page/Setttings'),
        ),
      ),
    );
  }
}