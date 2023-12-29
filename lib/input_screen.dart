import 'package:bmi/output_screen.dart';
import 'package:flutter/material.dart';
import 'gender_selector.dart';
import 'height_slider.dart';
import 'weight_age_input.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  Color maleColor = Colors.black87;
  Color femaleColor = Colors.black87;

  double height = 160; //
  int weight = 74; //
  int age = 25; //

  void _selectMale() {
    setState(() {
      maleColor = Colors.grey;
      femaleColor = Colors.black87;
    });
  }

  void _selectFemale() {
    setState(() {
      maleColor = Colors.black87;
      femaleColor = Colors.grey;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          GenderSelector(
            maleColor: maleColor,
            femaleColor: femaleColor,
            onMaleTap: _selectMale,
            onFemaleTap: _selectFemale,
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.black87,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: HeightSlider(onHeightChanged: (double value) {
              setState(() {
                height = value;
              });
            },),
          ),
          // Row(weight(), height())
          WeightAgeInput(
            onWeightChanged:(int value){
              setState(() {
                weight = value; // Simpan nilai weight ke dalam state
              });
            },
            onAgeChanged: (int value) {
              setState(() {
                age = value; // Simpan nilai weight ke dalam state
              });
            },
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.pink
            ),
            child: TextButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => OutputScreen(
                              gender: maleColor == Colors.grey ? 'Male' : 'Female',
                              height: height,
                              weight: weight,
                              age: age
                          )
                      )
                  );
                },
                child: Text(
                    'CALCULATE YOUR BMI',
                  style: TextStyle(color: Colors.white70),
                )
            )
          )
        ],
      ),
    );
  }
}
