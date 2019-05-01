import 'package:flutter/material.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMap extends StatelessWidget {
  final double lat;
  final double long;

  GoogleMap({this.lat, this.long});

//  Completer<GoogleMapController> _controller = Completer();

//  static const LatLng _center = const LatLng(lat, long);

//  void _onMapCreated(GoogleMapController controller) {
//    _controller.complete(controller);
//  }
  @override
  Widget build(BuildContext context) {
//    return GoogleMap(
//        onMapCreated: _onMapCreated,
//        initialCameraPosition: CameraPosition(
//          target: _center,
//          zoom: 11.0,
//        ),
//      ),
  }
}
