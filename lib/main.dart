import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:veranza_labs/pages/login_screen.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Veranza Apps',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: LoginScreen(),
    );
  }
}
