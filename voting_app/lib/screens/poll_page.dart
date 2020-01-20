import 'package:flutter/material.dart';

class PollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Flutter vs\nReact Native',
                  style: TextStyle(
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.poll),
                    Text(
                      '총 98표',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14.0),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              '크로스 플랫폼 중에 뭘 더 선호하시나요?',
              style: TextStyle(
                fontSize: 24.0,
                color: Color(0xff767676),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                FlatButton(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.share),
                      Text('공유하기'),
                    ],
                  ),
                ),
                FlatButton(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.thumb_up),
                      Text('27'),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.portrait),
                SizedBox(
                  width: 5.0,
                ),
                Text('사용자이름'),
                SizedBox(
                  width: 20.0,
                ),
                Text('5분전(작성시각)')
              ],
            )
          ],
        ),
      ),
    );
  }
}
