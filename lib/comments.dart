// void main() {
//   WidgetsFlutterBinding.ensureInitialized();

//   // Hide the top status bar
//   SystemChrome.setEnabledSystemUIMode(
//     SystemUiMode.manual,
//     overlays: [SystemUiOverlay.bottom],
//   );

//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Login UI',
//       theme: ThemeData(
//         fontFamily: 'Arial',
//         scaffoldBackgroundColor: Colors.white,
//         useMaterial3: true,
//       ),
//       home: const LoginScreen(),
//     );
//   }
// }

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   // The entered data is stored here.
//   String email = '';
//   String password = '';

//   bool obscurePassword = true;

//   final Color primaryColor = const Color(0xFF5D4298);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         top: false,
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.symmetric(horizontal: 25),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(height: 63),

//               // Welcome Back
//               Row(
//                 children: [
//                   const Text(
//                     'Welcome Back',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w700,
//                       color: Color(0xFF171717),
//                     ),
//                   ),
//                   const SizedBox(width: 4),
//                   const Text(
//                     '👋',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                 ],
//               ),

//               const SizedBox(height: 7),

//               // Subtitle
//               const Text(
//                 'Sign to your account',
//                 style: TextStyle(
//                   fontSize: 11,
//                   color: Color(0xFF999999),
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),

//               const SizedBox(height: 20),

//               // Email label
//               const Text(
//                 'Email',
//                 style: TextStyle(
//                   fontSize: 10,
//                   fontWeight: FontWeight.w600,
//                   color: Color(0xFF222222),
//                 ),
//               ),

//               const SizedBox(height: 6),

//               // Email field
//               _buildTextField(
//                 hintText: 'example@email.com',
//                 keyboardType: TextInputType.emailAddress,
//                 onChanged: (value) {
//                   email = value;
//                 },
//               ),

//               const SizedBox(height: 13),

//               // Password label
//               const Text(
//                 'Password',
//                 style: TextStyle(
//                   fontSize: 10,
//                   fontWeight: FontWeight.w600,
//                   color: Color(0xFF222222),
//                 ),
//               ),

//               const SizedBox(height: 6),

//               // Password field
//               _buildTextField(
//                 obscureText: obscurePassword,
//                 onChanged: (value) {
//                   password = value;
//                 },
//                 suffixIcon: GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       obscurePassword = !obscurePassword;
//                     });
//                   },
//                   child: Icon(
//                     obscurePassword
//                         ? Icons.visibility_off_outlined
//                         : Icons.visibility_outlined,
//                     size: 19,
//                     color: const Color(0xFFB7B7B7),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 12),

//               // Forgot Password
//               GestureDetector(
//                 onTap: () {
//                   // UI only
//                 },
//                 child: Text(
//                   'Forgot Password?',
//                   style: TextStyle(
//                     fontSize: 9,
//                     fontWeight: FontWeight.w600,
//                     color: primaryColor,
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 17),

//               // Login button
//               SizedBox(
//                 width: double.infinity,
//                 height: 32,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // No authentication.
//                     // You can use email and password here.
//                     debugPrint('Email: $email');
//                     debugPrint('Password: $password');

//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(
//                         content: Text(
//                           'Email: $email',
//                         ),
//                         duration: const Duration(seconds: 1),
//                       ),
//                     );
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: primaryColor,
//                     foregroundColor: Colors.white,
//                     elevation: 0,
//                     padding: EdgeInsets.zero,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                   child: const Text(
//                     'Login',
//                     style: TextStyle(
//                       fontSize: 11,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 16),

//               // Sign up
//               Center(
//                 child: GestureDetector(
//                   onTap: () {
//                     // UI only
//                   },
//                   child: RichText(
//                     text: TextSpan(
//                       style: const TextStyle(
//                         fontSize: 10,
//                         color: Color(0xFFAAAAAA),
//                       ),
//                       children: [
//                         const TextSpan(
//                           text: "Don't have an account? ",
//                         ),
//                         TextSpan(
//                           text: 'Sign Up',
//                           style: TextStyle(
//                             color: primaryColor,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 24),

//               // Or with divider
//               Row(
//                 children: [
//                   Expanded(
//                     child: Container(
//                       height: 1,
//                       color: const Color(0xFFEAEAEA),
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   const Text(
//                     'Or with',
//                     style: TextStyle(
//                       fontSize: 9,
//                       color: Color(0xFFAAAAAA),
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   Expanded(
//                     child: Container(
//                       height: 1,
//                       color: const Color(0xFFEAEAEA),
//                     ),
//                   ),
//                 ],
//               ),

//               const SizedBox(height: 17),

//               // Google button
//               _buildSocialButton(
//                 icon: _googleIcon(),
//                 text: 'Sign in with Google',
//                 onTap: () {
//                   // UI only
//                 },
//               ),

//               const SizedBox(height: 7),

//               // Apple button
//               _buildSocialButton(
//                 icon: const Icon(Icons.apple, size: 16, color: Colors.black),
//                 text: 'Sign in with Apple',
//                 onTap: () {
//                   // UI only
//                 },
//               ),

//               const SizedBox(height: 70),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField({
//     String? hintText,
//     bool obscureText = false,
//     TextInputType? keyboardType,
//     Widget? suffixIcon,
//     required ValueChanged<String> onChanged,
//   }) {
//     return Container(
//       height: 32,
//       decoration: BoxDecoration(
//         color: const Color(0xFFF8F8F8),
//         borderRadius: BorderRadius.circular(5),
//       ),
//       child: TextField(
//         onChanged: onChanged,
//         obscureText: obscureText,
//         keyboardType: keyboardType,
//         style: const TextStyle(
//           fontSize: 10,
//           fontWeight: FontWeight.w600,
//           color: Color(0xFF222222),
//         ),
//         cursorColor: primaryColor,
//         decoration: InputDecoration(
//           hintText: hintText,
//           hintStyle: const TextStyle(
//             fontSize: 10,
//             fontWeight: FontWeight.w500,
//             color: Color(0xFF222222),
//           ),
//           border: InputBorder.none,
//           contentPadding: const EdgeInsets.symmetric(
//             horizontal: 11,
//             vertical: 8,
//           ),
//           suffixIcon: suffixIcon == null
//               ? null
//               : Padding(
//                   padding: const EdgeInsets.only(right: 8),
//                   child: suffixIcon,
//                 ),
//           suffixIconConstraints: const BoxConstraints(
//             minWidth: 25,
//             minHeight: 25,
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildSocialButton({
//     required Widget icon,
//     required String text,
//     required VoidCallback onTap,
//   }) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: double.infinity,
//         height: 32,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           border: Border.all(
//             color: const Color(0xFFE7E7E7),
//             width: 1,
//           ),
//           borderRadius: BorderRadius.circular(18),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//               width: 20,
//               child: Center(child: icon),
//             ),
//             const SizedBox(width: 8),
//             Text(
//               text,
//               style: const TextStyle(
//                 fontSize: 9,
//                 color: Color(0xFF222222),
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _googleIcon() {
//     return const Text(
//       'G',
//       style: TextStyle(
//         fontSize: 15,
//         fontWeight: FontWeight.w700,
//         color: Color(0xFF4285F4),
//       ),
//     );
//   }
// }
