// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: CalculatorScreen(),
//   ));
// }

// class CalculatorScreen extends StatelessWidget {
//   const CalculatorScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final TextEditingController num1Controller = TextEditingController();
//     final TextEditingController num2Controller = TextEditingController();
    
//     final ValueNotifier<String> result = ValueNotifier<String>('0');

//     void calculate(String op) {
//       double n1 = double.tryParse(num1Controller.text) ?? 0;
//       double n2 = double.tryParse(num2Controller.text) ?? 0;
//       double res = 0;

//       if (op == '+') res = n1 + n2;
//       if (op == '-') res = n1 - n2;
//       if (op == '*') res = n1 * n2;
//       if (op == '/') {
//         if (n2 == 0) {
//           result.value = 'لا يمكن القسمة على صفر';
//           return;
//         }
//         res = n1 / n2;
//       }

//       result.value = (res % 1 == 0) ? res.toInt().toString() : res.toStringAsFixed(2);
//     }

//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: const Text('Calculator'),
//         backgroundColor: Colors.grey[900],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           children: [
//             // الخانة الأولى: no
//             Row(
//               children: [
//                 const Text('no  ', style: TextStyle(color: Colors.white, fontSize: 18)),
//                 Expanded(
//                   child: TextField(
//                     controller: num1Controller,
//                     keyboardType: TextInputType.number,
//                     style: const TextStyle(color: Colors.white),
//                     decoration: const InputDecoration(
//                       enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
//                       focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 15),

//             Row(
//               children: [
//                 const Text('no2  ', style: TextStyle(color: Colors.white, fontSize: 18)),
//                 Expanded(
//                   child: TextField(
//                     controller: num2Controller,
//                     keyboardType: TextInputType.number,
//                     style: const TextStyle(color: Colors.white),
//                     decoration: const InputDecoration(
//                       enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
//                       focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 25),

//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: ['+', '-', '*', '/'].map((op) {
//                 return OutlinedButton(
//                   style: OutlinedButton.styleFrom(
//                     side: const BorderSide(color: Colors.white),
//                     minimumSize: const Size(60, 50),
//                   ),
//                   onPressed: () => calculate(op),
//                   child: Text(op, style: const TextStyle(fontSize: 22, color: Colors.white)),
//                 );
//               }).toList(),
//             ),
//             const SizedBox(height: 30),

//             Container(
//               width: double.infinity,
//               padding: const EdgeInsets.all(15),
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.white, width: 2),
//                 borderRadius: BorderRadius.circular(5),
//               ),
//               child: ValueListenableBuilder<String>(
//                 valueListenable: result,
//                 builder: (context, value, child) {
//                   return Text(
//                     value,
//                     textAlign: TextAlign.center,
//                     style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }