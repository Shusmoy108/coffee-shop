import 'package:flutter/material.dart';

class TermsNConditions extends StatelessWidget {
  final List<String> terms = [
    'After twelve purchase you will get a free drink.',
    'You have to claim your free drinks to reset your score.',
    'You can claim your free drink anytime but beware that your loyalty score will not be updated during that period.',
    'You can add score from any of our stores by scanning barcode.'
  ];

  final List<Widget> termsWidget = List<Widget>();

  addWidget() {
    int count = 1;
    terms.forEach((term) {
      termsWidget.add(
        Container(
          padding: EdgeInsets.only(
            top: 7.0,
            left: 10.0,
            right: 10.0,
          ),
          child: Text(
            '$count. $term',
            style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 0.7),
              fontSize: 13.0,
              wordSpacing: 1.0,
            ),
          ),
        ),
      );
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    addWidget();
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(
            top: 15.0,
            left: 10.0,
            bottom: 10.0,
          ),
          child: Text(
            'Terms & Conditions',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: termsWidget,
        ),
      ],
    );
  }
}
