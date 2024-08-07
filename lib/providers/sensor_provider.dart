import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

class SensorProvider with ChangeNotifier {
  double _x = 0.0;
  double _y = 0.0;
  double _z = 0.0;

  SensorProvider() {
    _initSensors();
  }

  double get x => _x;
  double get y => _y;
  double get z => _z;

  void _initSensors() {
    accelerometerEvents.listen((AccelerometerEvent event) {
      _x = event.x;
      _y = event.y;
      _z = event.z;
      notifyListeners();
    });

    gyroscopeEvents.listen((GyroscopeEvent event) {
      // Handle gyroscope data if needed
    });
  }
}
