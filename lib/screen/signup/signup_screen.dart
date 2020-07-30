import 'package:flutter/material.dart';
import 'package:flutter_signup/constants.dart';
import 'package:flutter_signup/widget/have_account.dart';
import 'package:flutter_signup/widget/rounded_button.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Let\'s do some Adventure',
              style: TextStyle(
                color: mPrimaryTextColor,
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Create an account to get started',
            ),
            SizedBox(
              height: 36,
            ),
            RoundedInput(
              onChange: (value) {},
              hintText: 'Name',
            ),
            SizedBox(
              height: 16,
            ),
            RoundedInput(
              onChange: (value) {},
              hintText: 'Emial id',
            ),
            SizedBox(
              height: 16,
            ),
            RoundedInput(
                onChange: (value) {}, hintText: 'Password', suffixText: 'SHOW'),
            SizedBox(
              height: 16,
            ),
            Row(
              children: <Widget>[
                Checkbox(value: false, onChanged: (value) {}),
                Text('I accept the Terms of Use')
              ],
            ),
            SizedBox(
              height: 36,
            ),
            RoundedButton(
              press: () {},
              backgroundColor: mPrimaryColor,
              text: 'Sign up',
              textColor: Colors.white,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 50),
              child: Text(
                'By continuing, you agree to accept our Privacy Policy & Terms of Service',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            HaveAccount(),
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
      automaticallyImplyLeading: false,
      title: Text(
        'Adventure',
        style: TextStyle(
          color: mPrimaryTextColor,
          fontFamily: 'WildRide',
          fontSize: 40,
        ),
      ),
    );
  }
}

class RoundedInput extends StatelessWidget {
  const RoundedInput({
    Key key,
    this.hintText,
    this.onChange,
    this.suffixText = '',
  }) : super(key: key);

  final String hintText;
  final Function onChange;
  final String suffixText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        hintText: hintText,
        hintStyle: TextStyle(color: mPrimaryTextColor),
        suffixText: suffixText,
        suffixStyle: TextStyle(
          color: mPrimaryColor,
          fontSize: 12,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(36),
          borderSide: BorderSide(
            color: mBorderColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(36),
          borderSide: BorderSide(
            color: mBorderColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(36),
          borderSide: BorderSide(
            color: mBorderColor,
          ),
        ),
      ),
    );
  }
}
