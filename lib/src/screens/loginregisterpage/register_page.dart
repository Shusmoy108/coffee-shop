import 'package:flutter/material.dart';
import '../mainpage/main_page.dart';
import 'login_page.dart';

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
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 0.0),
            child: Form(
              key: regFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  usernameField(),
                  emailField(),
                  passwordField(),
                  confirmPasswordField(),
                  SizedBox(
                    height: 10.0,
                  ),
                  signupbutton(),
                  //submitButton(),
                  hasAccount(),
                ],
              ),
            ),
          ),
        ],
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

  Widget signupbutton() {
    return InkWell(
      onTap: () {
        if (regFormKey.currentState.validate() && password == confirmPassword) {
          regFormKey.currentState.save();
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return MainPage();
              },
            ),
            (Route<dynamic> route) => false,
          );
        } else {
          setState(() {
            _autovalidateRegform = true;
          });
        }
      },
      child: Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          color: Color.fromRGBO(220, 20, 60, 0.8),
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            //BoxShadow(color: Colors.grey, offset: Offset(1, 2)),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sign Up',
              style: TextStyle(
                  color: Colors.white, fontSize: 15.0, fontFamily: 'Merienda'),
            ),
            SizedBox(
              width: 0.0,
            ),
          ],
        ),
      ),
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
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return MainPage();
              },
            ),
            (Route<dynamic> route) => false,
          );
        } else {
          setState(() {
            _autovalidateRegform = true;
          });
        }
      },
    );
  }

  Widget hasAccount() {
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Already have an account?",
          ),
          SizedBox(
            width: 10.0,
          ),
          FlatButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) {
                    return LoginPage();
                  },
                ),
              );
            },
            child: Text(
              'Login',
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(
                color: Colors.redAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
