import 'package:flutter/material.dart';

class GenderSelector extends StatelessWidget {
  final Color maleColor;
  final Color femaleColor;
  final VoidCallback onMaleTap;
  final VoidCallback onFemaleTap;

  GenderSelector({
    required this.maleColor,
    required this.femaleColor,
    required this.onMaleTap,
    required this.onFemaleTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onMaleTap,
          child: Container(
            padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: maleColor,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8.0),
              ),
            child: const Column(
              children: [
                Icon(
                  Icons.male,
                  color: Colors.white70,
                  size: 32.0,
                ),
                SizedBox(height: 8.0),
                Text(
                  'Male',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: onFemaleTap,
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: femaleColor,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: const Column(
              children: [
                Icon(
                  Icons.female,
                  color: Colors.white70,
                  size: 32.0,
                ),
                SizedBox(height: 8.0),
                Text(
                  'Female',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
