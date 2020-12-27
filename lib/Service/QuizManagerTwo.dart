import 'package:cet_quiz_f/Service/Question.dart';
import 'package:cet_quiz_f/Service/Option.dart';

class QuizManagerTwo {
  QuizManagerTwo() {
    _questions.add(Question('Ctrl+V ne işe yarar?', [
      Option('Yapıştır', 10),
      Option('Kopyala', 0),
      Option('Kes', 0),
      Option('Sil', 0),
    ]));

    _questions.add(Question('Ctrl+X ne işe yarar?', [
      Option('Kopyala', 0),
      Option('Kes', 10),
      Option('Ekran Görüntüsü', 0),
      Option('Yapıştır', 0),
    ]));

    _questions.add(Question('Alt+prt sc ne işe yarar?', [
      Option('Ekran Görüntüsü', 10),
      Option('Sil', 0),
      Option('Tümünü Seç', 0),
      Option('Büyük Harf', 0),
    ]));

    _questions.add(Question('Ctrl+A ne işe yarar?', [
      Option('Tümünü Seç', 10),
      Option('Kopyala', 0),
      Option('Kes', 0),
      Option('Yapıştır', 0),
    ]));

    _questions.shuffle();
    for (var question in _questions) {
      question.options.shuffle();
    }
  }
  List<Question> _questions = [];
  int _score = 0;
  int currentQuestionId = 0;
  void nextQuestion(score) {
    if (currentQuestionId < _questions.length) {
      _score += score;
      currentQuestionId++;
    }
  }

  int getTotalScore() => _score;
  int getCurrentId() => currentQuestionId + 1;
  int totalQuestionNumber() => _questions.length;

  bool isFinished() {
    return currentQuestionId >= _questions.length;
  }

  Question getCurrentQuestion() {
    print('getCurrentQuestion $currentQuestionId');
    if (currentQuestionId < _questions.length) {
      return _questions[currentQuestionId];
    } else {
      return Question('', []);
    }
  }
}
