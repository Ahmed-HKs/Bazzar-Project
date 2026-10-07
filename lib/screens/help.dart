import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
    const HelpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF54408C),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Help Center',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color:Color(0xFF54408C),
            padding:EdgeInsets.only(top: 40, bottom: 32),
            child: Column(
              children: [
                Column(
                  children: [
                    const Text(
                      'Help Center',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Tell us how we can help 👋\nChapter are standing by for service & support!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFCFC3F0),
                        fontSize: 16,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xFFFAFAFA),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Color(0xFFF0F0F0)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.email, color: Color(0xFF54408C)),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Send to your email',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(width: 16),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xFFFAFAFA),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Color(0xFFF0F0F0)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.phone, color: Color(0xFF54408C)),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Phone Number',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Send to your phone',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
