import 'package:flutter/material.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  String code = '';

  void addNumber(String number) {
    if (code.length < 4) {
      setState(() {
        code += number;
      });
    }
  }

  void removeNumber() {
    if (code.isNotEmpty) {
      setState(() {
        code = code.substring(0, code.length - 1);
      });
    }
  }

  Widget numberButton(String number) {
    return SizedBox(
      width: 70,
      height: 47,
      child: TextButton(
        onPressed: () {
          addNumber(number);
        },
        child: Text(
          number,
          style: const TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
    );
  }

  Widget codeBox(int index) {
    String number = '';

    if (index < code.length) {
      number = code[index];
    }

    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xFFF9F9F9),
        borderRadius: BorderRadius.circular(6),
        border: index == code.length
            ? Border.all(color: const Color(0xFF654A9A))
            : null,
      ),
      child: Text(
        number,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 275,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const SizedBox(height: 30),

                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back, size: 20),
                  ),
                ),

                const SizedBox(height: 5),

                const Text(
                  'Verification Email',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 8),

                const Text(
                  'Please enter the code we just sent to email',
                  style: TextStyle(color: Colors.grey, fontSize: 9),
                ),

                const SizedBox(height: 3),

                const Text(
                  'ex@gmail.com',
                  style: TextStyle(color: Colors.black, fontSize: 9),
                ),

                const SizedBox(height: 25),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    codeBox(0),
                    const SizedBox(width: 10),
                    codeBox(1),
                    const SizedBox(width: 10),
                    codeBox(2),
                    const SizedBox(width: 10),
                    codeBox(3),
                  ],
                ),

                const SizedBox(height: 14),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "If you didn't receive a code? ",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: const Text(
                        'Resend',
                        style: TextStyle(
                          color: Color(0xFF5B4392),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFF594293),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "congrat");
                    },
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 300,
            width: double.infinity,
            color: const Color(0xFF594293),
            child: Column(
              children: [
                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    numberButton('1'),
                    numberButton('2'),
                    numberButton('3'),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    numberButton('4'),
                    numberButton('5'),
                    numberButton('6'),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    numberButton('7'),
                    numberButton('8'),
                    numberButton('9'),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(width: 70),
                    numberButton('0'),
                    SizedBox(
                      width: 70,
                      height: 47,
                      child: TextButton(
                        onPressed: removeNumber,
                        child: const Icon(
                          Icons.backspace_outlined,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
