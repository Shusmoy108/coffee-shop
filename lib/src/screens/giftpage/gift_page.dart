import 'package:flutter/material.dart';
import 'loyalty_card_ui.dart';
import 'terms_and_conditions.dart';

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
          LoyaltyCardUi(
            score: score,
            showDialog: showClaimConfirmDialog,
          ),
          TermsNConditions(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: score == 12 ? null : () {},
        label: Text(
          'Add Score',
        ),
        icon: Icon(Icons.add_circle_outline),
        backgroundColor: Color.fromRGBO(220, 20, 60, 0.8),
      ),
    );
  }
}
