import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/location_provider.dart';

class LocationTrackingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locationProvider = Provider.of<LocationProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Location Tracking'),
      ),
      body: Center(
        child: locationProvider.currentPosition != null
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Latitude: ${locationProvider.currentPosition!.latitude}',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Longitude: ${locationProvider.currentPosition!.longitude}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        )
            : CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          locationProvider.getCurrentLocation();
        },
        child: Icon(Icons.location_searching),
      ),
    );
  }
}
