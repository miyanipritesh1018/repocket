import 'package:flutter/material.dart';
import 'package:repocket/SignUp_and_Login_Screen/forgot_password.dart';

import '../Service.dart';
import 'SignUp_Screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool statue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      body: ListView(
        children: [
          SizedBox(
            height: 26,
          ),
          Padding(
            padding: EdgeInsets.only(right: 345),
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back)),
          ),
          SizedBox(
            height: 28,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Welcome back',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: Appfont.SpaceGrotesk,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.25,
                  color: AppColors.DARK_BLUE800),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Log in and continue enjoying Repocket',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: Appfont.SpaceGrotesk_Regular,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.25,
                  color: AppColors.GREY700),
            ),
          ),
          SizedBox(
            height: 28,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 44,
                  width: 104,
                  decoration: BoxDecoration(
                      color: AppColors.WHITE,
                      border: Border.all(color: AppColors.GREY300),
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(child: Image.asset('assest/ic_google.png'))),
              Container(
                  height: 44,
                  width: 104,
                  decoration: BoxDecoration(
                      color: AppColors.BLUE,
                      border: Border.all(color: AppColors.GREY300),
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(child: Image.asset('assest/ic_facebook.png'))),
              Container(
                  height: 44,
                  width: 104,
                  decoration: BoxDecoration(
                      color: AppColors.BLUELIGHT,
                      border: Border.all(color: AppColors.GREY300),
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(child: Image.asset('assest/ic_twitter.png'))),
            ],
          ),
          SizedBox(
            height: 27,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 148,
                child: Divider(
                  thickness: 1,
                  color: Color(0xFFE8E8E8),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'or',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: Appfont.SpaceGrotesk_Regular,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.25,
                    color: AppColors.GREY500),
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                width: 148,
                child: Divider(
                  thickness: 1,
                  color: Color(0xFFE8E8E8),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 31,
          ),
          //------- Email---------//

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Email',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: Appfont.Mukta_medium,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.15,
                  color: AppColors.GREY700),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
                height: 43,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: AppColors.GREY300),
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      prefixIcon: ImageIcon(AssetImage('assest/ic_mail.png')),
                      hintText: 'olivia@email.com',
                      hintStyle: TextStyle(
                          fontSize: 15,
                          fontFamily: Appfont.Mukta,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.15,
                          color: AppColors.GREY400),
                      fillColor: AppColors.GREY300.withOpacity(0.01),
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8))),
                )),
          ),
          SizedBox(
            height: 16,
          ),
          //------- Email---------//

          //------- password---------//
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Password',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: Appfont.Mukta_medium,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.15,
                  color: AppColors.GREY700),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
                height: 43,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: AppColors.GREY300),
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      prefixIcon: ImageIcon(AssetImage('assest/ic_lock.png')),
                      hintText: '●●●●●●●●',
                      hintStyle: TextStyle(
                          fontSize: 15,
                          fontFamily: Appfont.Mukta,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.15,
                          color: AppColors.GREY400),
                      suffixIcon: Icon(Icons.visibility_off),
                      fillColor: AppColors.GREY300.withOpacity(0.01),
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8))),
                )),
          ),
          //------- password---------//
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Must be at least 8 characters',
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: Appfont.Mukta_medium,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.15,
                  color: AppColors.GREY500),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        activeColor: AppColors.GREEN,
                        value: statue,
                        onChanged: (value) {
                          setState(() {
                            statue = value!;
                          });
                        }),
                    Text(
                      'Remember me',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: Appfont.Mukta_medium,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.15,
                          color: AppColors.GREY700),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPassword(),
                        ));
                  },
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: Appfont.Mukta,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.15,
                        color: AppColors.DARK_BLUE500),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),

          //------- sign in button---------//

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: InkWell(
              onTap: () {
                /* Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpSCreen(),
                    ));*/
              },
              child: Container(
                height: 52,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 2),
                          blurRadius: 2,
                          color: const Color(0xFFF3F4F6).withOpacity(0.05))
                    ],
                    color: Color(0xFFF3F4F6),
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    "Log in",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: Appfont.SpaceGrotesk_medium,
                        fontSize: 15,
                        letterSpacing: -0.25,
                        color: AppColors.GREY400),
                  ),
                ),
              ),
            ),
          ),

          //------- sign in button---------//
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don’t have an account?",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: Appfont.Mukta_medium,
                    fontSize: 15,
                    letterSpacing: -0.15,
                    color: AppColors.GREY500),
              ),
              SizedBox(
                width: 4,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpSCreen(),
                      ));
                },
                child: Text(
                  "Sign up",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: Appfont.Mukta,
                      fontSize: 15,
                      letterSpacing: -0.15,
                      color: AppColors.DARK_BLUE500),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
