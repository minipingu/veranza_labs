import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/background_login_gradient.png'),
          Padding(
            padding: const EdgeInsets.only(
              top: 120,
              bottom: 120,
              left: 20,
              right: 20,
            ),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFFFFFFF), width: 1),
                  color: Color(0xFFFFFFFF).withValues(alpha: 0.6),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icons/logo.png',
                        width: 34,
                        height: 34,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
