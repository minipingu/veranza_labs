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
          Positioned.fill(
            child: Image.asset(
              'assets/images/background_login_gradient.png',
              fit: BoxFit.fill,
            ),
          ),
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 120,
                  bottom: 120,
                  left: 20,
                  right: 20,
                ),
                child: Container(
                  width: .infinity,
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
                        Column(
                          spacing: 12,
                          children: [
                            Text(
                              'Login',
                              style: GoogleFonts.inter(
                                fontWeight: .w700,
                                fontSize: 34,
                              ),
                            ),
                            Text(
                              'Enter your email and password to log in',
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                color: Color(0xFF6C7278),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          spacing: 16,
                          children: [
                            // form username dan password
                            Column(
                              spacing: 6,
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Input your username',
                                    filled: true,
                                    fillColor: Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Color(0xFFEDF1F3),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Color.fromARGB(
                                          255,
                                          205,
                                          238,
                                          255,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: 'Input your password',
                                    filled: true,
                                    fillColor: Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Color(0xFFEDF1F3),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Color.fromARGB(
                                          255,
                                          205,
                                          238,
                                          255,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              spacing: 5,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.check_box_outline_blank,
                                    size: 14,
                                  ),
                                  color: Color(0xFF6C7278),
                                ),
                                Text(
                                  'Remember me',
                                  style: GoogleFonts.inter(
                                    color: Color(0xFF6C7278),
                                  ),
                                ),
                                Expanded(child: Container()),
                                Text(
                                  'Forgot Password ?',
                                  style: GoogleFonts.inter(
                                    color: Color(0xFF4D81E7),
                                    fontWeight: .w600,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Log In',
                            style: GoogleFonts.inter(color: Color(0xFFFFFFFF)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
