import 'package:sensors_plus/sensors_plus.dart';

class SensorService {
  // Get accelerometer events stream
  Stream<AccelerometerEvent> get accelerometerEvents =>
      accelerometerEvents;

  // Get gyroscope events stream
  Stream<GyroscopeEvent> get gyroscopeEvents =>
      gyroscopeEvents;
}
