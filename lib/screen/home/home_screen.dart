import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_signup/constants.dart';
import 'package:flutter_signup/screen/signup/signup_screen.dart';
import 'package:flutter_signup/widget/have_account.dart';
import 'package:flutter_signup/widget/rounded_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 48,
            ),
            Text(
              'The Best Camping Place in the world',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 48,
            ),
            Image.asset('assets/images/home.png'),
            SizedBox(
              height: 48,
            ),
            RoundedButton(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignupScreen();
                    },
                  ),
                );
              },
              text: 'Sign up with Email',
              backgroundColor: mButtonEmailColor.withOpacity(0.1),
              textColor: mPrimaryTextColor,
            ),
            SizedBox(
              height: 16,
            ),
            RoundedButton(
              press: () {},
              text: 'Sign up with Facebook',
              backgroundColor: mButtonFacebookColor,
              textColor: Colors.white,
            ),
            SizedBox(
              height: 16,
            ),
            RoundedButton(
              press: () {},
              text: 'Sign up with Apple',
              backgroundColor: mButtonAppleColor,
              textColor: Colors.white,
            ),
            SizedBox(
              height: 16,
            ),
            HaveAccount()
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: mBackgroundColor,
      elevation: 0,
      centerTitle: false,
      title: Text(
        'Adventure',
        style: TextStyle(
            color: mPrimaryTextColor, fontFamily: 'WildRide', fontSize: 40),
      ),
    );
  }
}
