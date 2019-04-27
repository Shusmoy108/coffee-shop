import 'package:flutter/material.dart';

class GiftPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gift Cards'),
        backgroundColor: Color.fromRGBO(220, 20, 60, 1.0),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 200, horizontal: 40.0),
        child: Center(
          child: Text('I have no idea what to put here'),
        ),
      ),
    );
  }
}

