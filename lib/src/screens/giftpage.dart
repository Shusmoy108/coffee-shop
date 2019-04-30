import 'package:flutter/material.dart';

class GiftPage extends StatefulWidget {
  @override
  _GiftPageState createState() => _GiftPageState();
}

class _GiftPageState extends State<GiftPage> {
  int score = 12;

  showClaimConfirmDialog() {
    if (score == 12) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Are you sure?'),
            content: SingleChildScrollView(
              child: Text(
                'Please click on the confirm button to claim your free drink.',
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Confirm'),
                onPressed: () {
                  Navigator.of(context).pop();
                  this.setState(() {
                    score = 0;
                  });
                },
              ),
              FlatButton(
                child: Text(
                  'Cancel',
                  style: TextStyle(
                    color: Colors.redAccent,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loyalty Card'),
        backgroundColor: Color.fromRGBO(220, 20, 60, 1.0),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.history),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          loyalityCard(context),
        ],
      ),
    );
  }

  Widget loyalityCard(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7.0),
      child: InkWell(
        onTap: () {
          showClaimConfirmDialog();
        },
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
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
            score == 12 ? cardFull() : cardNotFull(),
          ],
        ),
      ),
    );
  }

  Widget cardNotFull() {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            right: 15.0,
            top: 50.0,
          ),
          alignment: Alignment.topRight,
          child: Text(
            'Your Loyalty Score',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            right: 15.0,
            top: 20.0,
          ),
          alignment: Alignment.topRight,
          child: Text(
            '$score/12',
            style: TextStyle(
              color: Colors.yellowAccent,
              fontSize: 45.0,
            ),
          ),
        ),
      ],
    );
  }

  Widget cardFull() {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            right: 15.0,
            top: 50.0,
          ),
          alignment: Alignment.topRight,
          child: Text(
            'Your Loyalty Slot Full',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            right: 15.0,
            top: 20.0,
          ),
          alignment: Alignment.topRight,
          child: Text(
            '$score/12',
            style: TextStyle(
              color: Colors.redAccent,
              fontSize: 45.0,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            right: 15.0,
            top: 20.0,
          ),
          alignment: Alignment.topRight,
          child: Text(
            'click & claim your free drink',
            style: TextStyle(
              color: Colors.red[200],
              fontSize: 15.0,
            ),
          ),
        ),
      ],
    );
  }
}
