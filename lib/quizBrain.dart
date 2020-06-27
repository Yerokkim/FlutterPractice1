import 'questions.dart';

class QuizBrain {
  int _trackNumber = 0;
  List<Question> _questionBank = [
    Question('is yerok hot?', true),
    Question('is yerok cute?', true),
    Question('is yerok sweet?', true),
    Question('is yerok bitch?', false),
  ];

  void nextQuestion() {
    if (_trackNumber < _questionBank.length - 1) {
      _trackNumber++;
    }
  }

  bool isEnd() {
    if (_trackNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _trackNumber = 0;
  }

  String getQuestionText() {
    return _questionBank[_trackNumber].questions;
  }

  bool getQuestionAnswer() {
    return _questionBank[_trackNumber].answers;
  }
}
