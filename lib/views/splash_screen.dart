import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:veranza_labs/router/app_router.dart';
import 'package:veranza_labs/services/preferences_handler.dart';

class SplashScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    login();
  }

  void login() async {
    await Future.delayed(const Duration(seconds: 2));
    await LoginStorage.isLogin
        ? HomeRoute().go(context)
        : LoginRoute().go(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: .center,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(40),
              child: Image.asset('assets/images/nyawit.png', width: 300),
            ),
            SizedBox(
              height: 30,
              child: LoadingAnimationWidget.newtonCradle(
                color: Colors.deepOrange,
                size: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
