// import 'package:shared_preferences/shared_preferences.dart';

// class PreferencesHandler {
//   static late SharedPreferences _asyncPrefs;

//   static Future<void> init() async {
//     _asyncPrefs = await SharedPreferences.getInstance();
//   }

// await asyncPrefs.setBool('repeat', true);
// await asyncPrefs.setString('action', 'Start');

// final bool? repeat = await asyncPrefs.getBool('repeat');
// final String? action = await asyncPrefs.getString('action');

// await asyncPrefs.remove('repeat');

// // Any time a filter option is included as a method parameter, strongly consider
// // using it to avoid potentially unwanted side effects.
// await asyncPrefs.clear(allowList: <String>{'action', 'repeat'});
// }
