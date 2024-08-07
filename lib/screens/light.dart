import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/sensor_provider.dart';
import '../widgets/sensor_title.dart'; // Ensure this widget is correctly defined

class SensorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sensorProvider = Provider.of<SensorProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Sensor Data'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SensorTile(
              label: 'Accelerometer X',
              value: '${sensorProvider.x.toStringAsFixed(2)}',
            ),
            SensorTile(
              label: 'Accelerometer Y',
              value: '${sensorProvider.y.toStringAsFixed(2)}',
            ),
            SensorTile(
              label: 'Accelerometer Z',
              value: '${sensorProvider.z.toStringAsFixed(2)}',
            ),
            // Optionally handle gyroscope data if needed
          ],
        ),
      ),
    );
  }
}
