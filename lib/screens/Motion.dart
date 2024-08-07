import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/sensor_provider.dart';
import '../widgets/sensor_title.dart';

class MotionSensorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sensorProvider = Provider.of<SensorProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Motion Sensor'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SensorTile(
              label: 'X-axis',
              value: sensorProvider.x.toStringAsFixed(2),
            ),
            SensorTile(
              label: 'Y-axis',
              value: sensorProvider.y.toStringAsFixed(2),
            ),
            SensorTile(
              label: 'Z-axis',
              value: sensorProvider.z.toStringAsFixed(2),
            ),
          ],
        ),
      ),
    );
  }
}
