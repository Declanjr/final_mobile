import 'package:declan_final/providers/location_provider.dart';
import 'package:declan_final/providers/sensor_provider.dart';
import 'package:declan_final/routes/routes.dart';
import 'package:declan_final/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SmartHomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SensorProvider()),
        ChangeNotifierProvider(create: (_) => LocationProvider()),
      ],
      child: MaterialApp(
        title: 'Smart Home Monitoring',
        theme: AppTheme.lightTheme,
        initialRoute: AppRoutes.home,
        routes: AppRoutes.routes,
      ),
    );
  }
}
