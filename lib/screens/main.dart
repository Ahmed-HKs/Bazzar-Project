import 'package:depi_flutter/core/shared_helper.dart';
import 'package:depi_flutter/screens/History.dart';
import 'package:depi_flutter/screens/Splach.dart';
import 'package:depi_flutter/screens/congrate.dart';
import 'package:depi_flutter/screens/help.dart';
import 'package:depi_flutter/screens/login.dart';
import 'package:depi_flutter/screens/myaccount.dart';
import 'package:depi_flutter/screens/onboarding1.dart';
import 'package:depi_flutter/screens/onboarding2.dart';
import 'package:depi_flutter/screens/onboarding3.dart';
import 'package:depi_flutter/screens/register.dart';
import 'package:depi_flutter/screens/verification.dart';
import 'package:depi_flutter/screens/ProfileScreen.dart';
import 'package:depi_flutter/screens/fav.dart';
import 'package:depi_flutter/screens/home_screen.dart';
import 'package:depi_flutter/screens/main_screen.dart';
import 'package:depi_flutter/screens/category.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedHelper.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ahmed page",
      //theme: ThemeData(useMaterial3: true,),
      debugShowCheckedModeBanner: false,
      routes: {
        "splash": (_) => SplachScreen(),
        "onboarding1": (_) => OnBoarding1(),
        "onboarding2": (_) => OnBoarding2(),
        "onboarding3": (_) => OnBoarding3(),
        "login": (_) => LoginScreen(),
        "register": (_) => RegisterScreen(),
        "verifi": (_) => VerificationScreen(),
        "congrat": (_) => CongratulationsScreen(),
        "main": (_) => MainScreen(),
        "home": (_) => HomeScreen(),
        "category": (_) => CategoryScreen(),
        "profile": (_) => ProfileScreen(),
        "account": (_) => MyAccountScreen(),
        "fav": (_) => FavoritesScreen(),
        "history": (_) => HistoryScreen(),
        "help": (_) => HelpScreen(),
      },
      initialRoute: "splash",
      //home: HomeScreen(),
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 234, 245, 250),
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey,
//         foregroundColor: Colors.white,
//         title: Text("Home", style: TextStyle(fontSize: 30)),
//         leading: Icon(Icons.home, color: Colors.black),
//         actions: [
//           Icon(Icons.settings, color: Colors.amber),
//           Icon(Icons.notifications, color: Colors.deepPurple),
//           //Icon(Icons.cancel),
//         ],
//       ),

//     );
//   }
// }
