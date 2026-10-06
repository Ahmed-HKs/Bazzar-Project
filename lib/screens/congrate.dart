import 'package:flutter/material.dart';

class CongratulationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 150),

            Image.asset(
              'assets/Group.png',
              width: 110,
              height: 80,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 15),

            const Text(
              'Congratulations!',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 7),

            const Text(
              'your account is complete, please enjoy the',
              style: TextStyle(color: Colors.grey, fontSize: 9),
            ),

            const SizedBox(height: 3),

            const Text(
              'best menu from us.',
              style: TextStyle(color: Colors.grey, fontSize: 9),
            ),

            const SizedBox(height: 22),

            Container(
              width: 330,
              height: 45,
              decoration: BoxDecoration(
                color: const Color(0xFF5A4191),
                borderRadius: BorderRadius.circular(25),
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "main");
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
