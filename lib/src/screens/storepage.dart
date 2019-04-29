//import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  //Completer<GoogleMapController> _controller = Completer();

  //static const LatLng _center = const LatLng(45.521563, -122.677433);

//  void _onMapCreated(GoogleMapController controller) {
//    _controller.complete(controller);
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location'),
        backgroundColor: Color.fromRGBO(220, 20, 60, 1.0),
        elevation: 0.0,
      ),
//      body: GoogleMap(
//        onMapCreated: _onMapCreated,
//        initialCameraPosition: CameraPosition(
//          target: _center,
//          zoom: 11.0,
//        ),
//      ),
      body: FlutterMap(
        options: new MapOptions(
          center: new LatLng(23.81, 90.41),
          zoom: 13.0,
        ),
        layers: [
          new TileLayerOptions(
            urlTemplate: "https://api.tiles.mapbox.com/v4/"
                "{id}/{z}/{x}/{y}@2x.png?access_token={accessToken}",
            additionalOptions: {
              'accessToken':
                  'pk.eyJ1IjoiYXNoZW5vbmUxMTEiLCJhIjoiY2p2MmZ0dDJiMTFidDQzb2t2YTIyYTF5ciJ9.G3WNFQRAaWrgDfMEBDhfTQ',
              'id': 'mapbox.streets',
            },
          ),
          new MarkerLayerOptions(
            markers: [
              new Marker(
                width: 80.0,
                height: 80.0,
                point: new LatLng(23.81, 90.41),
                builder: (ctx) => new Container(
                      child: new FlutterLogo(),
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
