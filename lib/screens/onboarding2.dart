//import 'package:depi_flutter/firstProject/onboarding3.dart';
import 'package:flutter/material.dart';

class OnBoarding2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 24),
            child: TextButton(
              onPressed: () {Navigator.pushReplacementNamed(context, "login");},
              style: TextButton.styleFrom(foregroundColor: Color(0xFF54408C)),
              child: Text("Skip"),
            ),
          ),
          Image.asset('assets/frame2.png', width: 320, height: 320),
          SizedBox(
            width: 220,
            child: Text(
              "Your Bookish Soulmate Awaits",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            width: 280,
            child: Text(
              "Let us be your guide to the perfect read. Discover books tailored to your tastes for a truly rewarding experience.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFFA6A6A6),
                height: 1.5,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: Color(0xFFE8E8E8),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 8),
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: Color(0xFF54408C),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 8),
              Container(
                width: 6,
                height: 6,
                decoration: const BoxDecoration(
                  color: Color(0xFFE8E8E8),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
          Container(
            width: 327,
            height: 56,
            decoration: BoxDecoration(
              color: Color(0xFF54408C),
              borderRadius: BorderRadius.circular(16),
            ),
            child: MaterialButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "onboarding3");
              },
              child: Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Container(
            width: 327,
            height: 56,
            decoration: BoxDecoration(
              color: const Color(0xFFFAF9FD),
              borderRadius: BorderRadius.circular(16),
            ),
            child: MaterialButton(
              onPressed: () {
                 Navigator.pushReplacementNamed(context, "login");

              },
              child: const Text(
                'Sign in',
                style: TextStyle(
                  color: Color(0xFF54408C),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
