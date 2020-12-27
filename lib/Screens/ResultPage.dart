import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  int score;
  ResultPage({Key key, this.score}) : super(key: key);
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sonuç'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Tebrikler',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Dancing'),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 150),
              child: Text(
                '${widget.score}',
                style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.w900,
                    color: Colors.green),
              ),
            ),
          ],
        ));
  }
}
