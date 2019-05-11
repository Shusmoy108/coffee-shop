import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../mainpage/main_page.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  String email;
  String password;

  final loginFormKey = GlobalKey<FormState>();
  bool _autovalidateLoginform = false;
  bool _shouldObscureText = true;

  void toggleObscureFlag() {
    setState(() {
      _shouldObscureText = !_shouldObscureText;
    });
  }

  void login() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return MainPage();
        },
      ),
    );
    // if (email == 'ab@xy.com' && password == '12345') {
    //   Navigator.of(context).pushReplacement(
    //     MaterialPageRoute(
    //       builder: (BuildContext context) {
    //         return MainPage();
    //       },
    //     ),
    //   );
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                color: Colors.white,
                child: Form(
                  key: loginFormKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      animatedCcup(),
                      SizedBox(
                        height: 10.0,
                      ),
                      emailField(),
                      passwordField(),
                      SizedBox(
                        height: 10.0,
                      ),
                      loginbutton(),
                      forgetPassowrd(),
                      noAccount(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget animatedCcup() {
    return Container(
      child: Center(
        child: Container(
          //width: 100,
          // height: 100,
          child: Image(
            image: AssetImage(
              'images/coffeesmoke.gif',
            ),
          ),
        ),
      ),
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
      autovalidate: _autovalidateLoginform,
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
        labelStyle: TextStyle(
          color: Colors.black87,
        ),
        icon: Icon(
          Icons.lock,
          color: Colors.black87,
        ),
        suffix: GestureDetector(
          onTap: toggleObscureFlag,
          child: _shouldObscureText
              ? Icon(FontAwesomeIcons.solidEye)
              : Icon(FontAwesomeIcons.solidEyeSlash),
        ),
      ),
      obscureText: _shouldObscureText,
      validator: (String value) {},
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget loginbutton() {
    return InkWell(
      onTap: () {
        if (loginFormKey.currentState.validate()) {
          loginFormKey.currentState.save();
          login();
        } else {
          setState(() {
            _autovalidateLoginform = true;
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
              'Login',
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
    return RaisedButton(
      //icon: Icon(Icons.navigate_next),
      child: Text('Login'),
      color: Color.fromRGBO(220, 20, 60, 0.8),

      textColor: Colors.white,
      onPressed: () {
        if (loginFormKey.currentState.validate()) {
          loginFormKey.currentState.save();
          login();
        } else {
          setState(() {
            _autovalidateLoginform = true;
          });
        }
      },
    );
  }

  Widget forgetPassowrd() {
    return Container(
      child: FlatButton(
        onPressed: () {},
        child: Text(
          "Forgot Password?",
          style: TextStyle(
            decoration: TextDecoration.underline,
            color: Colors.black87,
            fontSize: 13.0,
          ),
        ),
      ),
    );
  }

  Widget noAccount() {
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Don't have an account?",
          ),
          SizedBox(
            width: 10.0,
          ),
          FlatButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) {
                    return RegisterPage();
                  },
                ),
                (Route<dynamic> route) => false,
              );
            },
            child: Text(
              'Sign Up',
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
