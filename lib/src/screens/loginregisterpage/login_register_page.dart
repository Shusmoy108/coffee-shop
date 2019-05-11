import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../mainpage/main_page.dart';
import 'login_page.dart';
import 'register_page.dart';

class LoginRegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new ExactAssetImage('images/frontpage.webp'),
            fit: BoxFit.cover,
          ),
        ),
        //color: Color.fromRGBO(20, 20, 20, 1.0),
        child: ListView(
          children: <Widget>[
            textbuilder(),
            Padding(
              padding: EdgeInsets.only(top: 200),
            ),
            //imageWidget(context),
            logregisterbutton(context),
            //logRegButtons(context),
            //stylishOR(),
            //fbgoogle(context),
          ],
        ),
      ),
    );
  }

  Widget imageWidget(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'images/frontpage.webp',
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget stylishText(text, size) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        //fontWeight: FontWeight.bold,
        color: Colors.white70,
        fontFamily: 'Merienda',
      ),
    );
  }

  Widget logRegButtons(context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }),
              );
            },
            child: Center(child: Text('Login')),
            color: Color.fromRGBO(220, 20, 60, 0.8),
            textColor: Colors.white,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return RegisterPage();
                }),
              );
            },
            child: Text('Register'),
            color: Color.fromRGBO(220, 20, 60, 0.8),
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget stylishOR() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.black12,
                  Colors.black,
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 1.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          width: 100.0,
          height: 1.0,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.0, right: 15.0),
          child: Text(
            "Or",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.black12,
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 1.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          width: 100.0,
          height: 1.0,
        ),
      ],
    );
  }

  Widget textbuilder() {
    return Container(
      child: Column(
        children: <Widget>[
          stylishText('Earn Free', 70.0),
          stylishText('Treats', 70.0),
          stylishText('Register today and get', 20.0),
          stylishText('100 points(\$1) on us!', 20.0),
        ],
      ),
    );
  }

  Widget logregisterbutton(context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) {
                    return LoginPage();
                  },
                ),
              );
            },
            child: Container(
              width: 200,
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
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: 'Merienda'),
                  ),
                  SizedBox(
                    width: 0.0,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) {
                    return RegisterPage();
                  },
                ),
              );
            },
            child: Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.black87,
                //color: Color.fromRGBO(220, 20, 60, 0.8),
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
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: 'Merienda'),
                  ),
                  SizedBox(
                    width: 0.0,
                  ),
                ],
              ),
            ),
          ),
          stylishText('I forgot my password >', 15.0)
        ],
      ),
    );
  }

  Widget fbgoogle(context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) {
                    return MainPage();
                  },
                ),
              );
            },
            child: Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(color: Colors.grey, offset: Offset(1, 2)),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Login with Facebook',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    FontAwesomeIcons.facebookF,
                    color: Colors.white,
                    size: 18.0,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) {
                    return MainPage();
                  },
                ),
              );
            },
            child: Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(color: Colors.grey, offset: Offset(1, 2)),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Login with Google',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    FontAwesomeIcons.google,
                    color: Colors.white,
                    size: 18.0,
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
