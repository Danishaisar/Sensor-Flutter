import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  double accelerometerX = 0.0;
  double accelerometerY = 0.0;
  double accelerometerZ = 0.0;

  double gyroscopeX = 0.0;
  double gyroscopeY = 0.0;
  double gyroscopeZ = 0.0;

  @override
  void initState() {
    super.initState();
    initSensors();
  }

  void initSensors() {
    accelerometerEvents.listen((AccelerometerEvent event) {
      setState(() {
        accelerometerX = event.x;
        accelerometerY = event.y;
        accelerometerZ = event.z;
      });
    });

    gyroscopeEvents.listen((GyroscopeEvent event) {
      setState(() {
        gyroscopeX = event.x;
        gyroscopeY = event.y;
        gyroscopeZ = event.z;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sensor Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Accelerometer Values:'),
            Text('X: $accelerometerX'),
            Text('Y: $accelerometerY'),
            Text('Z: $accelerometerZ'),
            SizedBox(height: 20),
            Text('Gyroscope Values:'),
            Text('X: $gyroscopeX'),
            Text('Y: $gyroscopeY'),
            Text('Z: $gyroscopeZ'),
          ],
        ),
      ),
    );
  }
}
