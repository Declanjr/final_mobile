import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/sensor_provider.dart';
import '../widgets/sensor_title.dart';
import 'Motion.dart';
import 'light.dart';
import 'location.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Smart Home Monitoring'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.lightbulb),
            title: Text('Light Sensor'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LightSensorScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.directions_walk),
            title: Text('Motion Sensor'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MotionSensorScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Location Tracking'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LocationTrackingScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class LightSensorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sensorProvider = Provider.of<SensorProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Light Data'),
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

