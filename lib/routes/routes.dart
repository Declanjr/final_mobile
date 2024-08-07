import 'package:flutter/material.dart';
import '../screens/Home.dart';
import '../screens/Motion.dart';
import '../screens/light.dart';
import '../screens/location.dart';

class AppRoutes {
  static const String home = '/';
  static const String lightSensor = '/light-sensor';
  static const String motionSensor = '/motion-sensor';
  static const String locationTracking = '/location-tracking';

  static Map<String, WidgetBuilder> get routes {
    return {
      home: (context) => HomeScreen(),
      lightSensor: (context) => LightSensorScreen(),
      motionSensor: (context) => MotionSensorScreen(),
      locationTracking: (context) => LocationTrackingScreen(),
    };
  }
}
