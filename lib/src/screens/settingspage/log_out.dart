import 'package:flutter/material.dart';
import '../loginregisterpage/login_register_page.dart';

class LogOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
      child: RaisedButton(
        child: Text('Logout'),
        color: Color.fromRGBO(220, 20, 60, 0.5),
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return LoginRegisterPage();
              },
            ),
            (Route<dynamic> route) => false,
          );
        },
      ),
    );
  }
}
