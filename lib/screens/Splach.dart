//import 'package:depi_flutter/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SplachScreen extends StatefulWidget {
  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    goNext();
    super.initState();
  }

  void goNext() {
    Future.delayed(Duration(seconds: 3), () {
      if(context.mounted) Navigator.pushReplacementNamed(context,"onboarding1");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF54408C),
      body: Center(child: Image.asset('assets/logo.png')),
    );
  }
}
