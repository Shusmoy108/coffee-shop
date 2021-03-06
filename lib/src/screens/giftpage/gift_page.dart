import 'dart:async';
import 'package:flutter/material.dart';
import 'loyalty_card_ui.dart';
import 'terms_and_conditions.dart';
import 'package:qrcode_reader/qrcode_reader.dart';
import '../cardhistorypage/card_history_page.dart';

class GiftPage extends StatefulWidget {
  @override
  _GiftPageState createState() => _GiftPageState();
}

class _GiftPageState extends State<GiftPage> {
  int score = 0;
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
        title: Text('Loyalty Card'),
        backgroundColor: Color.fromRGBO(220, 20, 60, 1.0),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.history),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return CardHistoryPage();
                  },
                ),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          LoyaltyCardUi(
            score: score,
            showDialog: showClaimConfirmDialog,
          ),
          TermsNConditions(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: score == 12 ? showSlotFullDialog : scan,
        label: Text(
          'Add Score',
        ),
        icon: Icon(Icons.camera_alt),
        backgroundColor: Color.fromRGBO(220, 20, 60, 0.8),
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
