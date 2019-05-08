import 'package:flutter/material.dart';
import 'package:qrcode_reader/qrcode_reader.dart';
import 'todays_offer.dart';
import 'personal_record.dart';
import 'add_point.dart';
import '../giftpage/loyalty_card_ui.dart';
import 'favorite_items.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int score = 12;
  String barcode = '';

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

  showSlotFullDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Can not add score'),
          content: SingleChildScrollView(
            child: Text(
              'Please claim your free drink first.',
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(
                'Dismiss',
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, Prottoy'),
        backgroundColor: Color.fromRGBO(220, 20, 60, 1.0),
        elevation: 0.0,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                LoyaltyCardUi(
                  score: score,
                  showDialog: showClaimConfirmDialog,
                ),
                SizedBox(
                  height: 30,
                ),
                PersonalRecord(),
                SizedBox(
                  height: 50,
                ),
                TodaysOffer(),
                SizedBox(
                  height: 20,
                ),
                AddPoint(
                  score: score,
                  scanCode: scan,
                  showDialog: showSlotFullDialog,
                ),
                SizedBox(
                  height: 50.0,
                ),
                FavoriteItems(),
                SizedBox(
                  height: 50.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future scan() async {
    try {
      String barcode = await QRCodeReader().scan();
      setState(() {
        this.barcode = "Result: $barcode";
        this.score++;
      });
    } catch (e) {
      setState(() {
        this.barcode = 'Error: $e';
      });
    }
  }
}
