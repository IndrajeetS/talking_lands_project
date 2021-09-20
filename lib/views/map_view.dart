import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:talking_lands/global/globals.dart';

class MapWidget extends StatefulWidget {
  @override
  State<MapWidget> createState() => MapWidgetState();
}

class MapWidgetState extends State<MapWidget> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(20.5937, 78.9629),
    zoom: 9.0,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        initialCameraPosition: _kGooglePlex,
        zoomControlsEnabled: true,
        myLocationButtonEnabled: true,
        mapType: MapType.normal,
        buildingsEnabled: true,
        compassEnabled: true,
        myLocationEnabled: true,
        // onMapCreated: (GoogleMapController controller) {
        //   _controller.complete(controller);
        // },
      ),
    );
  }
}
