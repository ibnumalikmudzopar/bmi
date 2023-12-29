import 'package:flutter/material.dart';

class HeightSlider extends StatefulWidget {
  final ValueChanged<double> onHeightChanged;

  HeightSlider({required this.onHeightChanged});

  @override
  _HeightSliderState createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSlider> {
  double _selectedHeight = 160.0;

  double get selectedHeight => _selectedHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Height:',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 16.0,
          ),
        ),
        Text(
          '${_selectedHeight.round()}cm',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 16.0,
          ),
        ),
        Slider(
          value: _selectedHeight,
          min: 120.0,
          max: 319.0,
          onChanged: (value) {
            setState(() {
              _selectedHeight = value;
              widget.onHeightChanged(value); // Memberi tahu perubahan nilai
            });
          },
        ),
        SizedBox(height: 16.0),
      ],
    );
  }
}

