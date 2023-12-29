import 'package:flutter/material.dart';
import 'input_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputScreen(),
    );
  }
}



// import 'package:flutter/material.dart';
//
// class GenderSelector extends StatefulWidget {
//   @override
//   _GenderSelectorState createState() => _GenderSelectorState();
// }
//
// class _GenderSelectorState extends State<GenderSelector> {
//   Color maleColor = Colors.black87;
//   Color femaleColor = Colors.black87;
//
//   void _selectMale() {
//     setState(() {
//       maleColor = Colors.grey; // Ganti dengan warna yang diinginkan
//       femaleColor = Colors.black87; // Ganti dengan warna yang diinginkan
//     });
//   }
//
//   void _selectFemale() {
//     setState(() {
//       maleColor = Colors.black87; // Ganti dengan warna yang diinginkan
//       femaleColor = Colors.grey; // Ganti dengan warna yang diinginkan
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('BMI Caluclator'),
//         ),
//         body: Column(
//           children: [
//             Row(
//               children: [
//                 InkWell(
//                   onTap: _selectMale,
//                   child: Container(
//                     padding: const EdgeInsets.all(16.0),
//                     decoration: BoxDecoration(
//                       color: maleColor,
//                       border: Border.all(color: Colors.black),
//                       borderRadius: BorderRadius.circular(8.0),
//                     ),
//                     child: const Column(
//                       children: [
//                         Icon(
//                           Icons.male,
//                           color: Colors.white,
//                           size: 32.0,
//                         ),
//                         SizedBox(height: 8.0),
//                         Text(
//                           'Male',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16.0,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: _selectFemale,
//                   child: Container(
//                     padding: const EdgeInsets.all(16.0),
//                     decoration: BoxDecoration(
//                       color: femaleColor,
//                       border: Border.all(color: Colors.black),
//                       borderRadius: BorderRadius.circular(8.0),
//                     ),
//                     child: const Column(
//                       children: [
//                         Icon(
//                           Icons.female,
//                           color: Colors.white,
//                           size: 32.0,
//                         ),
//                         SizedBox(height: 8.0),
//                         Text(
//                           'Female',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16.0,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//               padding: const EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 color: femaleColor,
//                 border: Border.all(color: Colors.black),
//                 borderRadius: BorderRadius.circular(8.0),
//               ),
//             ),
//             HeighSlider(),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
// class HeightSlider extends StatefulWidget {
//   @override
//   _HeightSliderState createState() => _HeightSliderState();
// }
//
// class _HeightSliderState extends State<HeightSlider> {
//   double selectedHeight = 160.0; // Nilai default tinggi
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Slider(
//           value: selectedHeight,
//           min: 120.0,
//           max: 319.0,
//           onChanged: (value) {
//             setState(() {
//               selectedHeight = value;
//             });
//           },
//         ),
//         SizedBox(height: 16.0),
//         Text(
//           'Selected Height: ${selectedHeight.round()} cm',
//           style: TextStyle(
//             fontSize: 16.0,
//           ),
//         ),
//       ],
//     );
//   }
// }

// void main() {
//   runApp(GenderSelector());
// }



// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('BMI Calculator'),
//         ),
//         body: Column(
//           children: [
//             Row(
//               children: [
//                 InkWell(
//                   onTap: (){
//
//                   },
//                   child: Container(
//                     padding: const EdgeInsets.all(16.0),
//                     decoration: BoxDecoration(
//                     color: Colors.black87,
//                     border: Border.all(color: Colors.black),
//                     borderRadius: BorderRadius.circular(8.0),
//                     ),
//                     child: const Column(
//                       children:[
//                         Icon(
//                         color: Colors.white70,
//                         Icons.male,
//                           size: 100.0,
//                       ),
//                         SizedBox(height: 8.0),
//                         Text(
//                          'MALE',
//                           style: TextStyle(
//                             color: Colors.white70,
//                             fontSize: 16.0,
//                           ),
//                         )
//                       ]
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: (){
//
//                   },
//                   child: Container(
//                     padding: const EdgeInsets.all(16.0),
//                     decoration: BoxDecoration(
//                     color: Colors.black87,
//                     border: Border.all(color: Colors.black),
//                     borderRadius: BorderRadius.circular(8.0),
//                     ),
//                     child: Column(
//                       children: [
//                         Icon(
//                           Icons.female,
//                           color: Colors.white70,
//                           size: 100.0,
//                         ),
//                         SizedBox(height: 8.0),
//                         Text(
//                           'FEMALE',
//                           style: TextStyle(
//                             color: Colors.white70,
//                             fontSize: 16.0,
//                           ),
//                         )
//                       ],
//                     ),
//                   )
//                 ),
//               ],
//             ),
//             InkWell(
//               onTap: () {
//                 // Tindakan ketika Kotak 3 diklik
//                 // Misalnya, set nilai tertentu atau tampilkan dialog
//               },
//               child: Container(
//                 padding: const EdgeInsets.all(16.0),
//                 decoration: BoxDecoration(
//                 color: Colors.black87,
//                 border: Border.all(color: Colors.black),
//                 borderRadius: BorderRadius.circular(8.0),
//                 ),
//               ),
//             ),
//             Row(
//               children: [
//                 InkWell(
//                     onTap: (){
//
//                     },
//                     child: Container(
//                       padding: const EdgeInsets.all(16.0),
//                       decoration: BoxDecoration(
//                         color: Colors.black87,
//                         border: Border.all(color: Colors.black),
//                         borderRadius: BorderRadius.circular(8.0),
//                       ),
//                     )
//                 ),
//                 InkWell(
//                     onTap: (){
//
//                     },
//                     child: Container(
//                       padding: const EdgeInsets.all(16.0),
//                       decoration: BoxDecoration(
//                         color: Colors.black87,
//                         border: Border.all(color: Colors.black),
//                         borderRadius: BorderRadius.circular(8.0),
//                       ),
//                     )
//                 ),
//               ],
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // Handle onPressed event for Submit button
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => const PageTwo(),
//                   ),
//                 );
//               },
//               child: const Text('Submit'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class PageTwo extends StatelessWidget {
//   // Constructor untuk menerima nilai-nilai dari kotak-kotak di halaman pertama
//   const PageTwo({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Page 2'),
//       ),
//       body: const Column(
//         children: [
//           // Tampilkan nilai-nilai yang diterima dari kotak-kotak di halaman pertama
//         ],
//       ),
//     );
//   }
// }
//
// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       theme: ThemeData(
// //         appBarTheme: const AppBarTheme(
// //           backgroundColor: Colors.black87,
// //           shape: RoundedRectangleBorder(
// //             borderRadius: BorderRadius.only(
// //                 bottomLeft: Radius.circular(1.0),
// //                 bottomRight: Radius.circular(1.0)
// //             ),
// //           ),
// //           elevation: 100.0,
// //         ),
// //       ),
// //       home: ,
// //     );
// //   }
// // }
//
// // class main_screen extends StatelessWidget {
// //   const main_screen({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Center(child: Text('BMI CALCULATOR ', style: TextStyle(color: Colors.white70, fontSize: 15.0),)),
// //       ),
// //       body: const Expanded(
// //         child: InputDataCalculatorBmi(),
// //       ),
// //     );
// //   }
// // }
// //
// // class InputDataCalculatorBmi extends StatelessWidget {
// //   const InputDataCalculatorBmi();
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return InkWell(
// //       onTap: (){
// //         print('Widget Di Klik!');
// //       },
// //         child: Row(
// //           mainAxisSize: MainAxisSize.min,
// //           children: [
// //           Container(
// //             padding: const EdgeInsets.all(16.0),
// //             decoration: BoxDecoration(
// //               color: Colors.black87,
// //               border: Border.all(color: Colors.black),
// //               borderRadius: BorderRadius.circular(8.0),
// //             ),
// //             child: Icon(
// //               Icons.male,
// //               color: Colors.white70,
// //             ),
// //           ),
// //           Container(
// //             padding: const EdgeInsets.all(16.0),
// //             decoration: BoxDecoration(
// //             color: Colors.black87,
// //             border: Border.all(color: Colors.black),
// //             borderRadius: BorderRadius.circular(8.0),
// //             ),
// //             child: Icon(
// //               Icons.female,
// //               color: Colors.white70,
// //             ),
// //           ),
// //           ]
// //         ),
// //     );
// //   }
// // }
// // // child: Container(
// // // padding: const EdgeInsets.all(16.0),
// // // decoration: BoxDecoration(
// // // color: Colors.black87,
// // // border: Border.all(color: Colors.black),
// // // borderRadius: BorderRadius.circular(8.0),
// // // ),
