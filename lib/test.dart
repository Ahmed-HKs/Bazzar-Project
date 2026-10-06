// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "test",
//       debugShowCheckedModeBanner: false,
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Color(0xFF6200EE),
//         foregroundColor: Colors.white,
//         leading: Icon(Icons.menu, size: 24),
//         title: Text("AppBar", style: TextStyle(fontSize: 20)),
//         actions: [
//           IconButton(icon: const Icon(Icons.favorite), onPressed: () {}),
//           const SizedBox(width: 16), // مسافة بين القلب والبحث
//           IconButton(icon: const Icon(Icons.search), onPressed: () {}),
//           const SizedBox(width: 16), // مسافة بين البحث ونقاط المزيد
//           IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
//           const SizedBox(width: 8), // مسافة خفيفة من حافة الشاشة اليمين
//         ],
//       ),
//     );
//   }
// }
///////////////////////////////////////////
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         leading: const Icon(Icons.home, color: Colors.black),
//         title: const Text(
//           'Home Page',
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         actions: const [
//           Row(
//             children: [
//               Icon(Icons.settings, color: Colors.amber),
//               Icon(Icons.notifications, color: Colors.blue),
//             ],
//           ),
//         ],
//       ),
      //////////////////////////////////////
      //? التاسك اللي كانت جوه السيشن بتاعت التطبيق على الصف والعمود
      // body:Column(
      //   //crossAxisAlignment: CrossAxisAlignment.start,
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     Text("our product"),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         Icon(Icons.abc),
      //         Icon(Icons.ac_unit),
      //         Icon(Icons.notifications),
      //       ],
      //     ),
      //     Text("Quick Services")
      //   ],
      // )
      ///////////////////////////////////
      //? تجريب العمود
      // body: Container(
      //   color: Colors.white,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     crossAxisAlignment:CrossAxisAlignment.center,
      //     children: [
      //       Text("hello world"),
      //       Text("hello world lsfisdoinclgsdoifeo"),
      //       Text("hello world"),
      //       Text("hello world"),
      //     ],
      //   ),
      // ),
      /////////////////////////////////
      //! تجريب الصف
      // body: Container(
      //   color: Colors.white,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Icon(Icons.notification_add),
      //       Text("hello world"),
      //       Text("hello world"),
      //       //Text("hello world"),
      //       //Text("hello world"),
      //       Icon(Icons.home),
      //     ],
      //   ),
      // ),
      //////////////////////////
      //! Buttons
      // body: Column(
      //   children: [
      //     // ElevatedButton(
      //     //   onPressed: () {
      //     //     print("Welcome");
      //     //   },
      //     //   child: Icon(Icons.home),
      //     // ),
      //     MaterialButton(onPressed: (){

      //     },
      //     color : Colors.red,
      //     child : Text("Login"))
      //   ],
      // ),
//       body:Column(
//         children:[
//           Container(
//             width: 100,
//             height: 60,
//             margin: EdgeInsets.all(10),
//             padding:EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               color: Colors.black,
//               borderRadius: BorderRadius.circular(35)
//             ),
//             child:Icon(Icons.home,color:Colors.white , size:25)
//           )
//         ]
//       )
//     );
//   }
// }
