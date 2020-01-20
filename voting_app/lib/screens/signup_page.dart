import 'package:flutter/material.dart';
import 'package:voting_app/screens/signup_detail_page.dart';

const buttonColor = Color(0xffC1C1C1);
const facebookColor = Color(0xff0038FF);
const kakaoColor = Color(0xffFFF500);

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              height: 180.0,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      '회원가입',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: Text(
                      '투표 계정 회원가입',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1.5,
                    indent: 30,
                    endIndent: 30,
                  ),
                  SignUpButton(
                    snsColor: Colors.black,
                    snsTitle: '이메일',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpDetail()));
                    },
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: Text(
                      'SNS 계정 회원가입',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1.5,
                    indent: 30,
                    endIndent: 30,
                  ),
                  SignUpButton(
                    snsColor: facebookColor,
                    snsTitle: 'Facebook',
                  ),
                  SignUpButton(
                    snsColor: Colors.black,
                    snsTitle: 'Google',
                  ),
                  SignUpButton(
                    snsColor: kakaoColor,
                    snsTitle: 'Kakao',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
