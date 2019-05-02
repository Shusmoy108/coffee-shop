import 'package:flutter/material.dart';

class PersonalRecord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.asset(
                'images/ordericon.png',
                width: 70,
                height: 70,
              ),
              Text(
                '61',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Total',
                style: TextStyle(
                  fontSize: 11.0,
                ),
              ),
              Text(
                'Orders',
                style: TextStyle(
                  fontSize: 11.0,
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Image.asset(
                'images/ccupicon.png',
                width: 70,
                height: 70,
              ),
              Text(
                '5',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Free drinks',
                style: TextStyle(
                  fontSize: 11.0,
                ),
              ),
              Text(
                'Claimed',
                style: TextStyle(
                  fontSize: 11.0,
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Image.asset(
                'images/pwalkicon.png',
                width: 70,
                height: 70,
              ),
              Text(
                '3',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Times visited',
                style: TextStyle(
                  fontSize: 11.0,
                ),
              ),
              Text(
                'Last month',
                style: TextStyle(
                  fontSize: 11.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
