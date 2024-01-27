## Flutter Sensor Implementation 📱🕹️

Welcome to the Second Screen of our Flutter app, where we leverage the power of sensors to create an interactive experience! 🚀

### Features:

- **Real-time Sensor Data:** Witness the magic of real-time data from the accelerometer and gyroscope sensors.
- **Responsive UI:** Experience dynamic updates as you move your device, providing an engaging and interactive user interface.
- **Smooth Animations:** Enjoy fluid animations that react seamlessly to your device's motion.

### Implementation:

```dart
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
