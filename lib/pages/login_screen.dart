import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 120,
                bottom: 120,
                left: 20,
                right: 20,
              ),
              child: Container(
                width: .infinity,
                height: .infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF).withValues(alpha: 0.6),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Color(0xFFFFFFFF)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    spacing: 24,
                    children: [
                      Image.asset(
                        'assets/icons/logo.png',
                        width: 34,
                        height: 34,
                      ),
                      Text(
                        'Login',
                        style: GoogleFonts.inter(
                          fontWeight: .w700,
                          fontSize: 34,
                        ),
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
