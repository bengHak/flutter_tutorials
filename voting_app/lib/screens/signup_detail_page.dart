import 'package:flutter/material.dart';

const textInputColor = Color(0xffDCDCDC);

class SignUpDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
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
                    margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
                    child: Text(
                      '아이디(이메일)',
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
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: textInputColor,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: TextField(),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
                    child: Text(
                      '비밀번호',
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
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: textInputColor,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: TextField(
                      obscureText: true,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
                    child: Text(
                      '비밀번호 확인',
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
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: textInputColor,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: TextField(
                      obscureText: true,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
                    child: Text(
                      '이름',
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
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: textInputColor,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: TextField(),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
                    child: Text(
                      '생년월일',
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
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: textInputColor,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '8자리 입력',
                      ),
                    ),
                  ),
                ],
              ),
            ),
//            Container(
//              width: double.infinity,
//              height: 60.0,
//              margin: EdgeInsets.fromLTRB(20, 30, 20, 10),
//              decoration: BoxDecoration(
//                color: Color(0xffC1C1C1),
////                      border: Border.all(
////                        color: Colors.grey,
////                        style: BorderStyle.solid,
////                      ),
//                borderRadius: BorderRadius.circular(15.0),
//              ),
////              child: FlatButton(
////                onPressed: () {
////                  Navigator.push(
////                    context,
////                    MaterialPageRoute(builder: (context) => SignUp()),
////                  );
////                },
//////                child: Center(
//////                  child: Text(
//////                    '회원가입',
//////                    style: TextStyle(
//////                      fontWeight: FontWeight.bold,
//////                      fontSize: 18,
//////                    ),
//////                  ),
//////                ),
////              ),
//            ),
          ],
        ),
      ),
      bottomNavigationBar: RaisedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        color: Colors.teal,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 30.0),
          child: Text(
            "회원가입",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
