import 'package:flutter/material.dart';
import 'package:flutter_signup/constants.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
            style: TextStyle(
              color: mPrimaryTextColor,
            ),
            children: [
              TextSpan(text: 'Already have an account?'),
              TextSpan(
                text: ' Log in',
                style: TextStyle(
                  color: mPrimaryColor
                ),
              ),
            ]),
      ),
    );
  }
}
