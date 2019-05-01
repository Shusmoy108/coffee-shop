import 'package:flutter/material.dart';

class LoyaltyCardUi extends StatelessWidget {
  final int score;
  final void Function() showDialog;
  LoyaltyCardUi({this.score, this.showDialog});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7.0),
      child: InkWell(
        onTap: () {
          showDialog();
        },
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1.5, 2.5),
                  ),
                ],
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/lcard.jpg'),
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                            left: 15.0,
                            top: 50.0,
                          ),
                          alignment: Alignment.topLeft,
                          child: Text(
                            score == 12
                                ? 'Loyalty Slot Full'
                                : 'Your Loyalty Score',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            left: 15.0,
                            top: 20.0,
                          ),
                          alignment: Alignment.topLeft,
                          child: Text(
                            '$score/12',
                            style: TextStyle(
                              color: score == 12
                                  ? Colors.redAccent
                                  : Colors.yellowAccent,
                              fontSize: 45.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Image.asset(
                        'images/cc$score.png',
                        width: 100,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 20.0,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    score == 12
                        ? 'click & claim your free drink'
                        : 'you will get a free drink when your slot is full',
                    style: TextStyle(
                      color: Colors.red[200],
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
