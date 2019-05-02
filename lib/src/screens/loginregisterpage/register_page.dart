import 'package:flutter/material.dart';
import '../mainpage/main_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String username;
  String email;
  String password;
  String confirmPassword;

  final regFormKey = GlobalKey<FormState>();

  bool _autovalidateRegform = false;
  bool _shouldObscureText = true;

  void toggleObscureFlag() {
    setState(() {
      _shouldObscureText = !_shouldObscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1.0),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(5.0),
          bottomLeft: Radius.circular(5.0),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Form(
        key: regFormKey,
        child: Column(
          children: <Widget>[
            usernameField(),
            emailField(),
            passwordField(),
            confirmPasswordField(),
            SizedBox(
              height: 10.0,
            ),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget usernameField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Username *',
        hintText: 'minimum six characters',
        icon: Icon(
          Icons.person,
          color: Colors.black87,
        ),
        labelStyle: TextStyle(
          color: Colors.black87,
        ),
      ),
      autovalidate: _autovalidateRegform,
      validator: (String value) {
        if (value.length > 5)
          return null;
        else
          return 'Username is too short';
      },
      onSaved: (String value) {
        username = value;
      },
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email Address *',
        hintText: 'you@example.com',
        icon: Icon(
          Icons.email,
          color: Colors.black87,
        ),
        labelStyle: TextStyle(
          color: Colors.black87,
        ),
      ),
      keyboardType: TextInputType.emailAddress,
      autovalidate: _autovalidateRegform,
      validator: (String value) {
        if (value.contains('@') && value.contains('.'))
          return null;
        else
          return 'Email is invalid';
      },
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password *',
        hintText: 'minimum 8 characters',
        labelStyle: TextStyle(
          color: Colors.black87,
        ),
        icon: Icon(
          Icons.lock,
          color: Colors.black87,
        ),
        suffix: GestureDetector(
          onTap: toggleObscureFlag,
          child: Icon(Icons.remove_red_eye),
        ),
      ),
      obscureText: _shouldObscureText,
      autovalidate: _autovalidateRegform,
      validator: (String value) {
        if (value.length > 8)
          return null;
        else
          return 'Password is too short';
      },
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget confirmPasswordField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Confirm Password *',
        labelStyle: TextStyle(
          color: Colors.black87,
        ),
        icon: Icon(
          Icons.lock,
          color: Colors.black87,
        ),
        suffix: GestureDetector(
          onTap: toggleObscureFlag,
          child: Icon(Icons.remove_red_eye),
        ),
      ),
      obscureText: _shouldObscureText,
      validator: (String value) {},
      onSaved: (String value) {
        confirmPassword = value;
      },
    );
  }

  Widget submitButton() {
    return RaisedButton.icon(
      icon: Icon(Icons.navigate_next),
      label: Text('Register'),
      color: Color.fromRGBO(220, 20, 60, 0.8),
      textColor: Colors.white,
      onPressed: () {
        if (regFormKey.currentState.validate() && password == confirmPassword) {
          regFormKey.currentState.save();
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return MainPage();
              },
            ),
          );
        } else {
          setState(() {
            _autovalidateRegform = true;
          });
        }
      },
    );
  }
}
