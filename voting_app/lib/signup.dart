import 'package:flutter/material.dart';
import 'package:voting_app/signup_detail.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int buttonColor = 0xffC1C1C1;

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
                  Container(
                    width: double.infinity,
                    height: 60.0,
                    margin: EdgeInsets.fromLTRB(20, 5, 20, 0),
                    decoration: BoxDecoration(
                      color: Color(buttonColor),
//                      border: Border.all(
//                        color: Colors.grey,
//                        style: BorderStyle.solid,
//                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpDetail()),
                        );
                      },
                      child: Center(
                        child: Text(
                          '이메일로 회원가입',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
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
                  Container(
                    width: double.infinity,
                    height: 60.0,
                    margin: EdgeInsets.fromLTRB(20, 5, 20, 11),
                    decoration: BoxDecoration(
                      color: Color(buttonColor),
//                      border: Border.all(
//                        color: Colors.grey,
//                        style: BorderStyle.solid,
//                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Facebook',
                              style: TextStyle(
                                color: Color(0xff0038FF),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              '으로 회원가입',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60.0,
                    margin: EdgeInsets.fromLTRB(20, 5, 20, 11),
                    decoration: BoxDecoration(
                      color: Color(buttonColor),
//                      border: Border.all(
//                        color: Colors.grey,
//                        style: BorderStyle.solid,
//                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Center(
                        child: Text(
                          'Google로 회원가입',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60.0,
                    margin: EdgeInsets.fromLTRB(20, 5, 20, 11),
                    decoration: BoxDecoration(
                      color: Color(buttonColor),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Kakao',
                              style: TextStyle(
                                color: Color(0xffFFF500),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              '로 회원가입',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
