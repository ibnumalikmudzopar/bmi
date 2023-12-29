import 'package:flutter/material.dart';

class WeightAgeInput extends StatefulWidget {

  final ValueChanged<int> onWeightChanged; // Tambahkan definisi parameter
  final ValueChanged<int> onAgeChanged; // Tambahkan definisi parameter

  WeightAgeInput({
    required this.onWeightChanged,
    required this.onAgeChanged,
  });
  @override
  _WeightAgeInputState createState() => _WeightAgeInputState();
}

class _WeightAgeInputState extends State<WeightAgeInput> {
  int weight = 74;
  int age = 30;

  void incrementWeight() {
    setState(() {
      weight++;
      widget.onWeightChanged(weight);
    });
  }

  void decrementWeight() {
    setState(() {
      if (weight > 0) {
        weight--;
        widget.onWeightChanged(weight);
      }
    });
  }

  void incrementAge() {
    setState(() {
      age++;
      widget.onAgeChanged(age);
    });
  }

  void decrementAge() {
    setState(() {
      if (age > 0) {
        age--;
        widget.onAgeChanged(age);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildInputContainer(
            'WEIGHT', weight, incrementWeight, decrementWeight
        ),
        SizedBox(width: 16.0),
        buildInputContainer(
            'AGE', age, incrementAge, decrementAge
        ),
      ],
    );
  }

  Widget buildInputContainer(String label, int value, Function() increment, Function() decrement) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.black87,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            '$value',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.add),
                color: Colors.white,
                onPressed: increment,
              ),
              IconButton(
                icon: Icon(Icons.remove),
                color: Colors.white,
                onPressed: decrement,
              ),
            ],
          ),
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';
//
// class WeightAgeInput extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Container(
//           padding: EdgeInsets.all(16.0),
//           decoration: BoxDecoration(
//             color: Colors.black87,
//             border: Border.all(color: Colors.black),
//             borderRadius: BorderRadius.circular(8.0)
//           ),
//           child: Column(
//             children: [
//               Text(
//                   'WEIGHT',
//                 style: TextStyle(
//                   color: Colors.white70,
//                   fontSize: 18.0
//                 ),
//               ),
//               Text(
//                 '74',
//                 style: TextStyle(
//                     color: Colors.white70,
//                     fontSize: 18.0
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Container(
//           padding: EdgeInsets.all(16.0),
//           decoration: BoxDecoration(
//             color: Colors.black87,
//             border: Border.all(color: Colors.black),
//             borderRadius: BorderRadius.circular(8.0)
//           ),
//           child: Column(
//             children: [
//               Text(
//                   'AGE',
//                 style: TextStyle(
//                   color: Colors.white70,
//                   fontSize: 18.0
//                 ),
//               ),
//               Text(
//                 '74',
//                 style: TextStyle(
//                     color: Colors.white70,
//                     fontSize: 18.0
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
//
// }