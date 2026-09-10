import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //state
  bool wantToSeePassword = false;
  bool rememberMe = false;

  //fontweight
  FontWeight medium = .w500;
  FontWeight regular = .w400;
  FontWeight semiBold = .w600;
  FontWeight bold = .w700;

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
                                Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFFE4E5E7)
                                            .withValues(alpha: 0.24),
                                        blurRadius: 2,
                                        offset: Offset(0, 1),
                                      ),
                                    ],
                                  ),
                                  child: TextFormField(
                                    style: GoogleFonts.inter(
                                      color: Color(0xFF1A1C1E),
                                      fontSize: 14,
                                      fontWeight: medium,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: 'Username',
                                      hintStyle: GoogleFonts.inter(
                                        color: Color(0xFF000000)
                                            .withValues(alpha: 0.4),
                                      ),
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
                                          color: Color(0xFFEDF1F3),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFFE4E5E7)
                                            .withValues(alpha: 0.24),
                                        blurRadius: 2,
                                        offset: Offset(0, 1),
                                      ),
                                    ],
                                  ),
                                  child: TextFormField(
                                    style: GoogleFonts.inter(
                                      color: Color(0xFF1A1C1E),
                                      fontSize: 14,
                                      fontWeight: medium,
                                    ),
                                    obscureText: !wantToSeePassword,
                                    decoration: InputDecoration(
                                      suffixIcon: GestureDetector(
                                        onTap: () => setState(
                                          () => wantToSeePassword =
                                              !wantToSeePassword,
                                        ),
                                        child: Icon(
                                          wantToSeePassword
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          size: 16,
                                        ),
                                      ),
                                      suffixIconColor: Color(0xFFACB5BB),
                                      hintText: 'Input your password',
                                      hintStyle: GoogleFonts.inter(
                                        color: Color(0xFF000000)
                                            .withValues(alpha: 0.4),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xFFFFFFFF),
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
                                ),
                              ],
                            ),
                            Row(
                              spacing: 5,
                              children: [
                                GestureDetector(
                                  onTap: () =>
                                      setState(() => rememberMe = !rememberMe),
                                  child: Icon(
                                    rememberMe
                                        ? Icons.check_box_outline_blank
                                        : Icons.check_box_outlined,
                                    size: 19,
                                    color: Color(0xFF6C7278),
                                  ),
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
                        SizedBox(
                          width: .infinity,
                          height: 48,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/login_button_background.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    10,
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Log In',
                                style: GoogleFonts.inter(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 14,
                                  fontWeight: .w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          spacing: 16,
                          children: [
                            Expanded(child: Divider(color: Color(0xFFFFFFFF))),
                            Text(
                              'Or login with',
                              style: GoogleFonts.inter(
                                color: Color(0xFF6C7278),
                                fontSize: 12,
                                fontWeight: regular,
                              ),
                            ),
                            Expanded(child: Divider(color: Color(0xFFFFFFFF))),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            Image.asset(
                              'assets/icons/login_google.png',
                              width: 62.5,
                              height: 48,
                            ),
                            Image.asset('assets/icons/login_facebook.png'),
                            Image.asset('assets/icons/login_google.png'),
                            Image.asset('assets/icons/login_google.png'),
                          ],
                        ),
                        Center(
                          child: Row(
                            children: [
                              Text(
                                'Don’t have an account?',
                                style: GoogleFonts.inter(
                                  color: Color(0xFF6C7278),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text('Sign Up'),
                              ),
                            ],
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
