import 'package:flutter/material.dart';

class PointWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Your points:',
            style: TextStyle(
              color: Colors.green,
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            '10',
            style: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.bold,
                fontSize: 35.0),
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            '(max 12)',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 11.0,
            ),
          ),
        ],
      ),
    );
  }
}
