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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location'),
        backgroundColor: Color.fromRGBO(220, 20, 60, 1.0),
        elevation: 0.0,
      ),
      body: MapboxMap(
        lat: currentLatitude,
        long: currentLongitude,
      ),
      floatingActionButton: CustomFAButton(
        fabAction: updateLocation,
      ),
    );
  }
}
