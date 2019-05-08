import 'package:flutter/material.dart';
import 'mapbox_map.dart';
//import 'google_map.dart';
import 'custom_floating_action_button.dart';

class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  double currentLatitude = 23.81;
  double currentLongitude = 90.41;

  updateLocation(double newLat, double newLong) {
    setState(() {
      currentLatitude = newLat;
      currentLongitude = newLong;
    });
  }

  var imageURL =
      "https://cdn-a.william-reed.com/var/wrbm_gb_food_pharma/storage/images/publications/food-beverage-nutrition/beveragedaily.com/article/2018/08/28/nestle-gains-unparalleled-position-in-coffee-business-with-starbucks-alliance/8543630-1-eng-GB/Nestle-gains-unparalleled-position-in-coffee-business-with-Starbucks-alliance_wrbm_large.jpg";
  Widget shop(text, size) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageURL),
      ),
      title: Text(
        text,
        style: TextStyle(
          fontSize: size,
          //fontWeight: FontWeight.bold,
          color: Colors.black87,
          fontFamily: 'Lobster',
        ),
      ),
      subtitle: Text(
        "Dhaka",
        style: TextStyle(
          fontSize: 15,
          //fontWeight: FontWeight.bold,
          color: Colors.black87,
          fontFamily: 'Lobster',
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
        color: Colors.blueGrey,
        fontFamily: 'Merienda',
      ),
    );
  }

  Widget stylishText2(text, size) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        //fontWeight: FontWeight.bold,
        color: Colors.black87,
        fontFamily: 'Playball',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location'),
        backgroundColor: Color.fromRGBO(220, 20, 60, 1.0),
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.width * 0.7,
              child: MapboxMap(
                lat: currentLatitude,
                long: currentLongitude,
              ),
            ),
            Center(
              child: stylishText("Shop List", 40.0),
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.45,
              child: ListView(
                children: <Widget>[
                  shop("StarBucks", 20.0),
                  shop("Crimson Cup Coffee", 20.0),
                  shop("NORTH END coffee roasters", 20.0),
                  shop("Butlers Chocolate Café, Gulshan", 20.0),
                  shop("The Coffee Bean & Tea Leaf", 20.0),
                  shop("Gloria Jean's Coffees", 20.0),
                  shop("Muno Cafe Bistro", 20.0),
                  shop("Rio Coffee", 20.0),
                  shop("Coffee Express", 20.0),
                ],
              ),
            )
          ],
        ),
      ),
      // floatingActionButton: CustomFAButton(
      //   fabAction: updateLocation,
      // ),
    );
  }
}
