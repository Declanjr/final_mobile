import 'package:flutter/material.dart';

class SensorTile extends StatelessWidget {
  final String label;
  final String value;

  SensorTile({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        tileColor: Colors.grey[200],
        title: Text(label),
        trailing: Text(value),
      ),
    );
  }
}
