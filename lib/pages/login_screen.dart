import 'package:material_ui/material_ui.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veranza_labs/pages/components/another_login.dart';

class LoginScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isSignUp = false;
  //state
  bool wantToSeePassword = false;
  bool rememberMe = false;

  //fontweight
  FontWeight medium = .w500;
  FontWeight regular = .w400;
  FontWeight semiBold = .w600;
  FontWeight bold = .w700;

  final _formKey = GlobalKey<FormBuilderState>();

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
                    child: FormBuilder(
                      key: _formKey,
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
                                _isSignUp ? 'Sign Up' : 'Login',
                                style: GoogleFonts.inter(
                                  fontWeight: .w700,
                                  fontSize: 34,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  text: 'Enter your email and password to ',
                                  children: [
                                    TextSpan(
                                      text: _isSignUp ? 'sign up' : 'log in',
                                    ),
                                  ],
                                  style: GoogleFonts.inter(
                                    fontSize: 12,
                                    color: Color(0xFF6C7278),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            spacing: 16,
                            children: [
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
                                    child: FormBuilderTextField(
                                      name: 'email',
                                      validator: FormBuilderValidators.compose([
                                        FormBuilderValidators.required(),
                                        FormBuilderValidators.email(),
                                      ]),
                                      style: GoogleFonts.inter(
                                        color: Color(0xFF1A1C1E),
                                        fontSize: 14,
                                        fontWeight: medium,
                                      ),
                                      decoration: InputDecoration(
                                        hintText: 'Input your email',
                                        hintStyle: GoogleFonts.inter(
                                          color: Color(0xFF000000)
                                              .withValues(alpha: 0.4),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFFFFFFF),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                          borderSide: BorderSide(
                                            color: Color(0xFFEDF1F3),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
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
                                    child: FormBuilderTextField(
                                      name: 'password',
                                      validator: FormBuilderValidators.compose([
                                        FormBuilderValidators.required(),
                                        FormBuilderValidators.password(
                                          minLength: 8,
                                          minLowercaseCount: 1,
                                          minNumberCount: 1,
                                          minSpecialCharCount: 1,
                                          minUppercaseCount: 1,
                                        ),
                                      ]),
                                      style: GoogleFonts.inter(
                                        color: Color(0xFF1A1C1E),
                                        fontSize: 14,
                                        fontWeight: medium,
                                      ),
                                      obscureText: !wantToSeePassword,
                                      decoration: InputDecoration(
                                        suffixIcon: InkWell(
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
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                          borderSide: BorderSide(
                                            color: Color(0xFFEDF1F3),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
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
                                  InkWell(
                                    onTap: () => setState(
                                      () => rememberMe = !rememberMe,
                                    ),
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
                                  if (!_isSignUp)
                                    InkWell(
                                      onTap: () {},
                                      child: Text(
                                        'Forgot Password ?',
                                        style: GoogleFonts.inter(
                                          color: Color(0xFF4D81E7),
                                          fontWeight: .w600,
                                          fontSize: 12,
                                        ),
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
                                onPressed: () {
                                  // Validate and save the form values
                                  _formKey.currentState?.saveAndValidate();
                                  debugPrint(
                                    _formKey.currentState?.value.toString(),
                                  );

                                  // On another side, can access all field values without saving form with instantValues
                                  _formKey.currentState?.validate();
                                  debugPrint(
                                    _formKey.currentState?.instantValue
                                        .toString(),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      10,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  _isSignUp ? 'Sign Up' : 'Log In',
                                  style: GoogleFonts.inter(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 14,
                                    fontWeight: .w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            spacing: 16,
                            children: [
                              Row(
                                spacing: 16,
                                children: [
                                  Expanded(
                                    child: Divider(color: Color(0xFFFFFFFF)),
                                  ),
                                  Text(
                                    !_isSignUp
                                        ? 'Or login with'
                                        : 'Or sign up with',
                                    style: GoogleFonts.inter(
                                      color: Color(0xFF6C7278),
                                      fontSize: 12,
                                      fontWeight: regular,
                                    ),
                                  ),
                                  Expanded(
                                    child: Divider(color: Color(0xFFFFFFFF)),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: .spaceBetween,
                                children: [
                                  //reusable massss....
                                  AnotherLogin(
                                    path: 'assets/icons/login_google.png',
                                  ),
                                  AnotherLogin(
                                    path: 'assets/icons/login_facebook.png',
                                  ),
                                  AnotherLogin(
                                    path: 'assets/icons/login_apple.png',
                                  ),
                                  AnotherLogin(
                                    path: 'assets/icons/login_phone.png',
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Center(
                            child: Row(
                              spacing: 6,
                              children: [
                                Expanded(child: Container()),
                                Text(
                                  _isSignUp
                                      ? 'Already have an account?'
                                      : 'Don’t have an account?',
                                  style: GoogleFonts.inter(
                                    color: Color(0xFF6C7278),
                                    fontWeight: semiBold,
                                    fontSize: 12,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _isSignUp = !_isSignUp;
                                    });
                                  },
                                  child: Text(
                                    _isSignUp ? 'Sign In' : 'Sign Up',
                                    style: GoogleFonts.inter(
                                      color: Color(0xFF4D81E7),
                                      fontWeight: semiBold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Expanded(child: Container()),
                              ],
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
        ],
      ),
    );
  }
}
