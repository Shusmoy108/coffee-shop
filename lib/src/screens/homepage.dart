import 'package:flutter/material.dart';

String st = 'Place an order and head straight to the pickup counter when you arrive';

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
                todaysOffer(),
                SizedBox(height: 30,),
                orderAhead(context),
                Container(
                  width: MediaQuery.of(context).size.width-40,
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text('I have left remaining of this page blank for more ideas'),
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }

  Widget todaysOffer(){
    return Container(
      height: 242.0,
      child: Stack(
        children: <Widget>[
          Image.asset('images/expresso.jpg'),
          Container(
            color: Color.fromRGBO(0, 0, 0, 0.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Today's Offer",
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontSize: 30.0,
                      fontFamily: 'Merienda'
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    //color: Colors.greenAccent,
                    padding: EdgeInsets.symmetric(horizontal: 4.0,vertical: 2.0),
                    child: Text(
                      "Espresso",
                      style: TextStyle(
                        color: Colors.lightGreenAccent,
                        fontSize: 25.0,
                        fontFamily: 'Merienda',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "150 Tk",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontFamily: 'Playball',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget orderAhead(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              blurRadius: 1.0,
              spreadRadius: 0.5,
              offset: Offset(0.0, 1.5),
            ),
          ],
        ),
        child: InkWell(
          child: Row(
            children: <Widget>[
              Image.asset(
                'images/oahead.jpg',
                fit: BoxFit.contain,
              ),
              Container(
                padding: EdgeInsets.only(left: 5.0),
                width: MediaQuery.of(context).size.width- 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Order Ahead',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Text(
                      st,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          onTap: (){},
        ),
      ),
    );
  }
}
