import 'package:flutter/material.dart';
import 'package:voting_app/consts.dart';

class SignUpButton extends StatelessWidget {
  SignUpButton({@required this.text, @required this.textColor, this.onPressed});

  final Color textColor;
  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.0,
      margin: EdgeInsets.fromLTRB(20, 5, 20, 11),
      decoration: BoxDecoration(
        color: kButtonColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: FlatButton(
        onPressed: onPressed,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 23,
            ),
          ),
        ),
      ),
    );
  }
}
