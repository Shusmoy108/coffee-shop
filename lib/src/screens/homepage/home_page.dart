import 'package:flutter/material.dart';
import 'todays_offer.dart';
import 'personal_record.dart';
import 'add_point.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.camera),
        title: Text('Welcome, User'),
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
                TodaysOffer(),
                SizedBox(
                  height: 30,
                ),
                PersonalRecord(),
                SizedBox(
                  height: 50,
                ),
                AddPoint(),
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text('এইখানে আর কি কি অ্যাড করা যায় বলিস'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
