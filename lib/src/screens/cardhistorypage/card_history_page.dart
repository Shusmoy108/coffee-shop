import 'package:flutter/material.dart';
import '../../resources/dummydata.dart';

class CardHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card History'),
        backgroundColor: Color.fromRGBO(220, 20, 60, 1.0),
        elevation: 0.0,
      ),
      body: Container(
        child: ListView.separated(
          itemCount: cardhistoty.length,
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.grey,
            );
          },
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.adjust),
              title: Text(
                cardhistoty[index][0],
              ),
              subtitle: Text(
                cardhistoty[index][1],
              ),
            );
          },
        ),
      ),
    );
  }
}
