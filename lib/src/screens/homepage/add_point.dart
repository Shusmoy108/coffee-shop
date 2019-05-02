import 'package:flutter/material.dart';

class AddPoint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'images/oahead.jpg',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Add points !',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
                Text(
                  'Scan code and add points. After 12 points you can get one free drink',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10.0,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 70,
            width: 70,
            child: Center(
              child: IconButton(
                iconSize: 35.0,
                color: Colors.red[400],
                icon: Icon(Icons.camera_alt),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
