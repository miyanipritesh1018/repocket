import 'package:flutter/material.dart';
import 'package:repocket/Home/home.dart';
import 'package:repocket/Service.dart';

import 'login.dart';

class SignUpSCreen extends StatefulWidget {
  const SignUpSCreen({Key? key}) : super(key: key);

  @override
  State<SignUpSCreen> createState() => _SignUpSCreenState();
}

class _SignUpSCreenState extends State<SignUpSCreen> {
  late FocusNode _focusNode;
  late FocusNode _focusNode1;
  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode1 = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _focusNode1.dispose();
    super.dispose();
  }

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
              'Create an Account',
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
              'Sign up now to access your free account and\nmake money',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: Appfont.SpaceGrotesk_Regular,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.25,
                  color: AppColors.GREY700),
            ),
          ),
          SizedBox(
            height: 15,
          ),

          //------- Your name---------//

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Your name',
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
                    border: Border.all(
                        width: 1,
                        color: _focusNode.hasFocus
                            ? AppColors.GREEN
                            : AppColors.GREY300),
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.WHITE,
                    boxShadow: _focusNode.hasFocus
                        ? [
                            BoxShadow(
                                offset: Offset(0, 0),
                                spreadRadius: 4,
                                color: Color.fromRGBO(115, 237, 190, 0.3)),
                          ]
                        : null),
                child: TextField(
                  onTap: _requestFocus,
                  focusNode: _focusNode,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      prefixIcon: ImageIcon(
                        AssetImage('assest/ic_person.png'),
                        color: AppColors.GREY500,
                      ),
                      hintText: 'Olivia Turkney',
                      hintStyle: TextStyle(
                          fontSize: 15,
                          fontFamily: Appfont.Mukta,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.15,
                          color: AppColors.GREY400),
                      filled: true,
                      fillColor: AppColors.WHITE,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8))),
                )),
          ),
          SizedBox(
            height: 16,
          ),
          //------- Your name---------//

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
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Container(
                height: 43,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.GREY300,
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  focusNode: _focusNode1,
                  onTap: _requestFocus1,
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
          SizedBox(
            height: 16,
          ),

          //------- sign Up button---------//

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ));
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
                    "Sign up",
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

          //------- sign Up button---------//
          SizedBox(
            height: 16,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Container(
                height: 42,
                width: 345,
                child: Text(
                  'By continuing, I confirm that I am 18+ and agree to Repocket’s Terms of Use and Privacy Policy',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: Appfont.Mukta,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.15,
                      color: AppColors.GREY500),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 31,
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
            height: 27,
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
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
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
                        builder: (context) => LoginScreen(),
                      ));
                },
                child: Text(
                  "Log in",
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

  void _requestFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  void _requestFocus1() {
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode1);
    });
  }
}
