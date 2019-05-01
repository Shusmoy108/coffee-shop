import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class MapboxMap extends StatelessWidget {
  final double lat;
  final double long;
  final String token =
      'pk.eyJ1IjoiYXNoZW5vbmUxMTEiLCJhIjoiY2p2MmZ0dDJiMTFidDQzb2t2YTIyYTF5ciJ9.G3WNFQRAaWrgDfMEBDhfTQ';

  MapboxMap({this.lat, this.long});

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(lat, long),
        zoom: 13.0,
      ),
      layers: [
        TileLayerOptions(
          urlTemplate: "https://api.tiles.mapbox.com/v4/"
              "{id}/{z}/{x}/{y}@2x.png?access_token={accessToken}",
          additionalOptions: {
            'accessToken': token,
            'id': 'mapbox.streets',
          },
        ),
        MarkerLayerOptions(
          markers: [
            Marker(
              width: 80.0,
              height: 80.0,
              point: LatLng(lat, long),
              builder: (ctx) => Container(
                    child: Icon(
                      Icons.add_location,
                    ),
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
