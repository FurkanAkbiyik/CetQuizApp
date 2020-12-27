import 'package:cet_quiz_f/Service/Option.dart';
import 'package:cet_quiz_f/Service/Question.dart';

class QuizManager {
  QuizManager() {
    _questions.add(Question('Türkiye' 'nin başkenti neresidir?', [
      Option('Ankara', 10),
      Option('İstanbul', 0),
      Option('İzmir', 0),
      Option('Antalya', 0),
    ]));

    _questions.add(Question('Fransa' 'nın başkenti neresidir?', [
      Option('Lyon', 0),
      Option('Paris', 10),
      Option('Marsilya', 0),
      Option('Lens', 0),
    ]));

    _questions.add(Question('İngiltere' 'nin başkenti neresidir?', [
      Option('Londra', 10),
      Option('Norwich', 0),
      Option('Manchester', 0),
      Option('City', 0),
    ]));

    _questions.add(Question('Belçika' 'nın başkenti neresidir?', [
      Option('Brüksel', 10),
      Option('Brugge', 0),
      Option('Ankara', 0),
      Option('Aydın', 0),
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
