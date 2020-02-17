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
                      SizedBox(
                        width: 5.0,
                      ),
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
            ),
            Divider(),
            Text('투표 항목'),
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      VotingItem(
                        imagePath: 'images/flutter_logo.png',
                        title: '플러터',
                      ),
                      VotingItem(
                        imagePath: 'images/react_native_logo.png',
                        title: '리액트 네이티브',
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(),
            Text('댓글'),
          ],
        ),
      ),
    );
  }
}

class VotingItem extends StatelessWidget {
  VotingItem({
    this.imagePath,
    this.title,
  });

  final String imagePath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(imagePath),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                child: Text(
                  '$title',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        '투표하기',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
