import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../service/location_service.dart';

class LocationProvider with ChangeNotifier {
  Position? _currentPosition;
  final LocationService _locationService = LocationService();

  Position? get currentPosition => _currentPosition;

  Future<void> getCurrentLocation() async {
    _currentPosition = await _locationService.getCurrentPosition();
    notifyListeners();
  }
}
