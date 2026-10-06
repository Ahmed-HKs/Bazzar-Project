import 'package:shared_preferences/shared_preferences.dart';

class SharedHelper {
  //هستخدم static عشان اخليه global
  static late SharedPreferences prefs;
  static Future init() async {
    prefs = await SharedPreferences.getInstance();
  }
}
