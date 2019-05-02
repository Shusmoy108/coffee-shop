import 'package:flutter/material.dart';
import 'app.dart';

class BeginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigo,
            bottom: TabBar(
              indicatorColor: Colors.green,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  child: Text(
                    'Log In',
                    style: new TextStyle(
                        fontSize: 20,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Tab(
                  child: Text(
                    'Sign Up',
                    style: new TextStyle(
                        fontSize: 20,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            title: Center(child: Text('Coffee-Shop')),
          ),
          body: TabBarView(
            children: [
              LogIn(),
              LogIn(),
            ],
          ),
        ),
      ),
    );
  }
}

class LogIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LogInState();
  }
}

class LogInState extends State<LogIn> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";
  @override
  Widget build(BuildContext context) {
    return new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new ExactAssetImage('images/starbucks.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: new Container(
          margin: EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: ListView(
              children: <Widget>[
                // Image.asset(
                //   'images/starbucks.jpg',
                //   width: 600,
                //   height: 400,
                // ),
                Padding(
                  padding: EdgeInsets.only(top: 100),
                ),
                emailField(),
                passwordField(),
                loginButton(),
              ],
            ),
          ),
        ));
  }

  Widget emailField() {
    return new TextFormField(
      decoration: InputDecoration(labelText: "Email"),
      onSaved: (val) => _email = val,
      validator: (String value) {
        if (!value.contains("@")) {
          return "Email must be valid";
        }
      },
    );
  }

  Widget passwordField() {
    return new TextFormField(
        decoration: InputDecoration(labelText: "Password"),
        onSaved: (val) => _password = val,
        obscureText: true,
        validator: (String value) {
          if (value.length <= 4) {
            return "Password length must be greater than 4";
          }
        });
  }

  Widget loginButton() {
    return RaisedButton(
      color: Colors.green,
      child: Text("Log In"),
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          debugPrint(_email);
          debugPrint(_password);
          login();

          formKey.currentState.reset();
          //save form data to the database

        }
      },
    );
  }

  void login() {
    if (_email == 'saku@' && _password == 'madari') {
      var router =
          new MaterialPageRoute(builder: (BuildContext context) => new App());
      Navigator.of(context).pushReplacement(router);
    }
  }
}
