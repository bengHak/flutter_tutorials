import 'package:flutter/material.dart';
import 'package:voting_app/consts.dart';

class SignUpButton extends StatelessWidget {
  SignUpButton(
      {@required this.snsTitle, @required this.snsColor, this.onPressed});

  final Color snsColor;
  final String snsTitle;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.0,
      margin: EdgeInsets.fromLTRB(20, 5, 20, 11),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: FlatButton(
        onPressed: onPressed,
        child: Center(
          child: Text(
            snsTitle,
            style: TextStyle(
              color: snsColor,
              fontWeight: FontWeight.bold,
              fontSize: 23,
            ),
          ),
        ),
      ),
    );
  }
}
