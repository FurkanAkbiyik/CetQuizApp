import 'package:flutter/material.dart';
import 'package:cet_quiz_f/Screens/QuizPage.dart';
import 'package:cet_quiz_f/Screens/QuizPageTwo.dart';

void gotoQuizPage(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => QuizPage()));
}

void gotoQuizPageTwo(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => QuizPageTwo()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: Text('Cet Quiz'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text(
                  'Hoşgeldiniz',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'Dancing',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            RaisedButton(
              onPressed: () {
                gotoQuizPage(context);
              },
              child: Text('Başkent'),
              color: Colors.white,
            ),
            RaisedButton(
              onPressed: () {
                gotoQuizPageTwo(context);
              },
              child: Text(
                'Bilgisayar',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.green,
            ),
          ],
        ));
  }
}
