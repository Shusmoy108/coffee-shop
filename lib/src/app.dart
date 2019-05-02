import 'package:flutter/material.dart';
import 'screens/loginregisterpage/login_register_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop',
      debugShowCheckedModeBanner: false,
      home: LoginRegisterPage(),
    );
  }
}
