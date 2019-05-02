import 'package:flutter/material.dart';

class TodaysOffer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'images/expresso.jpg',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            color: Color.fromRGBO(0, 0, 0, 0.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Today's Offer",
                    style: TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 30.0,
                        fontFamily: 'Merienda'),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    //color: Colors.greenAccent,
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                    child: Text(
                      "Espresso",
                      style: TextStyle(
                        color: Colors.lightGreenAccent,
                        fontSize: 25.0,
                        fontFamily: 'Merienda',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "150 Tk",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontFamily: 'Playball',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
