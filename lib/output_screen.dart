import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  final String gender;
  final double height;
  final int weight;
  final int age;

  OutputScreen({
    required this.gender,
    required this.height,
    required this.weight,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your Result:',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              categoryBMI(),
              style: TextStyle(fontSize: 18.0),
            ),
            Text(
              calculateBMI().toStringAsFixed(2),
              style: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              'Gender: $gender\nHeight: $height cm\nWeight: $weight kg\nAge: $age years',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }

  double calculateBMI() {
    return weight / ((height / 100) * (height / 100));
  }

  String categoryBMI() {
    double intCalculateBMI = calculateBMI();

    if (intCalculateBMI < 18.5) {
      return 'Underweight';
    } else if (intCalculateBMI >= 18.5 && intCalculateBMI < 25.0) {
      return 'Normal Weight';
    } else if (intCalculateBMI >= 25.0 && intCalculateBMI < 30.0) {
      return 'Overweight';
    } else if (intCalculateBMI >= 30.0 && intCalculateBMI < 35.0) {
      return 'Obesity Level I';
    } else if (intCalculateBMI >= 35.0 && intCalculateBMI < 40.0) {
      return 'Obesity Level II';
    } else {
      return 'Obesity Level III';
    }
  }
}
