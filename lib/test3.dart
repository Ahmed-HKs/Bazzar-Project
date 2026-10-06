// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(body: Center(child: CounterWidget())),
//     ),
//   );
// }

// class CounterWidget extends StatefulWidget {
//   const CounterWidget({super.key});

//   @override
//   State<CounterWidget> createState() => CounterWidgetState();
// }

// class CounterWidgetState extends State<CounterWidget> {
//   int counter = 0; 
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Text(
//           '$counter',
//           style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 16),
//         Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             IconButton(
//               onPressed: () => setState(() => counter--),
//               icon: const Icon(Icons.remove),
//               iconSize: 25,
//             ),
//             const SizedBox(width: 20),
//             IconButton(
//               onPressed: () => setState(() => counter++),
//               icon: const Icon(Icons.add),
//               iconSize: 32,
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
///////////////////////////////////////////
//!navigator
// import 'package:flutter/material.dart';
// import 'profileScreen.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("navigator test page")),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (_) => ProfileScreen()),
//             );
//           },
//           child: Text("Next"),
//         ), // ElevatedButton
//       ), // Center
//     ); // Scaffold
//   }
// }
