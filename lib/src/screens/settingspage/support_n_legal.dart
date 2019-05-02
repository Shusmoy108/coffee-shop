import 'package:flutter/material.dart';

class SupportAndLegal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        snlHeader(),
        contactUs(),
        termsNconditions(),
      ],
    );
  }

  Widget snlHeader() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 5.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
        child: Text(
          'Support & Legal',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: 'Merienda',
          ),
        ),
      ),
    );
  }

  Widget contactUs() {
    return Container(
      child: ExpansionTile(
        title: Text('Contact Us'),
        children: <Widget>[
          Container(),
        ],
      ),
    );
  }

  Widget termsNconditions() {
    return Container(
      child: ExpansionTile(
        title: Text('Terms & Conditions'),
        children: <Widget>[
          Container(),
        ],
      ),
    );
  }
}
