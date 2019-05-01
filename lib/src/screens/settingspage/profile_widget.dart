import 'package:flutter/material.dart';

class ProfileWidget extends StatefulWidget {
  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  String username;
  String password;
  String email;

  final chngUsernameFormKey = GlobalKey<FormState>();
  bool _autovalidateUsername = false;
  final chngEmailFormKey = GlobalKey<FormState>();
  bool _autovalidateEmail = false;
  final chngPasswordFormKey = GlobalKey<FormState>();
  bool _autovalidatePassword = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        profileHeader(),
        changeUsername(),
        changeEmail(),
        changePassword(),
      ],
    );
  }

  Widget profileHeader() {
    return Container(
      padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 5.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
      child: Text(
        'Your Profile',
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontFamily: 'Merienda',
        ),
      ),
    );
  }

  Widget changeUsername() {
    return Container(
      child: ExpansionTile(
        title: Text('Change Username'),
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Form(
              key: chngUsernameFormKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      labelText: 'New Username *',
                      hintText: 'atleast 6 characters long',
                    ),
                    maxLength: 25,
                    maxLengthEnforced: true,
                    autofocus: true,
                    autovalidate: _autovalidateUsername,
                    onSaved: (String value) {
                      username = value;
                    },
                    validator: (String value) {
                      return value.length < 6 ? 'Username is too short' : null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      labelText: 'Current Password *',
                    ),
                    maxLength: 25,
                    maxLengthEnforced: true,
                    obscureText: true,
                    autovalidate: _autovalidateUsername,
                    onSaved: (String value) {},
                    validator: (String value) {
                      return value != '12345' ? 'Password didnot match' : null;
                    },
                  ),
                  RaisedButton(
                    child: Text('Update'),
                    color: Color.fromRGBO(220, 20, 60, 0.8),
                    disabledColor: Colors.grey,
                    disabledElevation: 0.0,
                    onPressed: () {
                      if (chngUsernameFormKey.currentState.validate()) {
                        chngUsernameFormKey.currentState.save();
                      } else {
                        setState(() {
                          _autovalidateUsername = true;
                        });
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget changeEmail() {
    return Container(
      child: ExpansionTile(
        title: Text('Change Email'),
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Form(
              key: chngEmailFormKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      labelText: 'New Email *',
                      hintText: 'enter valid email address',
                    ),
                    maxLength: 25,
                    maxLengthEnforced: true,
                    autofocus: true,
                    autovalidate: _autovalidateEmail,
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (String value) {
                      email = value;
                    },
                    validator: (String value) {
                      return !value.contains('@') ? 'Email is invalid' : null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      labelText: 'Current Password *',
                    ),
                    maxLength: 25,
                    maxLengthEnforced: true,
                    obscureText: true,
                    autovalidate: _autovalidateEmail,
                    onSaved: (String value) {},
                    validator: (String value) {
                      return value != '12345' ? 'Password didnot match' : null;
                    },
                  ),
                  RaisedButton(
                    child: Text('Update'),
                    color: Color.fromRGBO(220, 20, 60, 0.8),
                    disabledColor: Colors.grey,
                    disabledElevation: 0.0,
                    onPressed: () {
                      if (chngEmailFormKey.currentState.validate()) {
                        chngEmailFormKey.currentState.save();
                      } else {
                        setState(() {
                          _autovalidateEmail = true;
                        });
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget changePassword() {
    return Container(
      child: ExpansionTile(
        title: Text('Change Password'),
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Form(
              key: chngPasswordFormKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      labelText: 'New Password *',
                      hintText: 'atleast 6 characters long',
                    ),
                    maxLength: 25,
                    maxLengthEnforced: true,
                    obscureText: true,
                    autofocus: true,
                    autovalidate: _autovalidatePassword,
                    onSaved: (String value) {
                      password = value;
                    },
                    validator: (String value) {
                      return value.length < 6 ? 'Password is too short' : null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      labelText: 'Re-enter Password *',
                    ),
                    maxLength: 25,
                    maxLengthEnforced: true,
                    obscureText: true,
                    autovalidate: _autovalidatePassword,
                    onSaved: (String value) {},
                    validator: (String value) {
                      //return value != password ? 'Password didnot match' : null;
                    },
                  ),
                  RaisedButton(
                    child: Text('Update'),
                    color: Color.fromRGBO(220, 20, 60, 0.8),
                    disabledColor: Colors.grey,
                    disabledElevation: 0.0,
                    onPressed: () {
                      if (chngPasswordFormKey.currentState.validate()) {
                        chngPasswordFormKey.currentState.save();
                      } else {
                        setState(() {
                          _autovalidatePassword = true;
                        });
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
