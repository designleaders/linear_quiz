import 'package:flutter/material.dart';

void main() {
  runApp(LinearQuiz());
}

class LinearQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Linear Quiz App'),
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: QuizPage(),
        )),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  List<String> quesitons = [
    'school students face HSC exam in every year?.',
    'For being a happy man you need to be honest first.',
    'Industry is the key to succes?.',
    ' What Do You Like Least About Your Job?',
    'What Are You Looking for in a New Position?',
// What Type of Work Environment Do You Prefer?,
// What’s Your Work Style?,
// What’s Your Management Style?,
// How Would Your Boss and Coworkers Describe You?,
// How Do You Deal With Pressure or Stressful Situations?,
// What Do You Like to Do Outside of Work?,
// Are You Planning on Having Children?,
// How Do You Prioritize Your Work?,
// What Are You Passionate About?,
// What Motivates You?,
// What Are Your Pet Peeves?,
// How Do You Like to Be Managed?,
// Do You Consider Yourself Successful?,
// Where Do You See Yourself in Five Years?,
// How Do You Plan to Achieve Your Career Goals?,
// What\’s Your Dream Job?,
// What Other Companies Are You Interviewing With?,
// What Makes You Unique?,
// What Should I Know That’s Not on Your Resume?,
// What Would Your First 30, 60, or 90 Days Look Like in This Role?,
// What Are Your Salary Expectations?,
// What Do You Think We Could Do Better or Differently?,
// When Can You Start?,
// Are You Willing to Relocate?,
// How Many Tennis Balls Can You Fit Into a Limousine?,
// If You Were an Animal, Which One Would You Want to Be?,
// Sell Me This Pen.,
  ];
  int questionNumber = 0;
  List<bool> answers = [true, false, true, false, true];
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  quesitons[questionNumber],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: FlatButton(
                  minWidth: 350,
                  height: 80,
                  color: Colors.green,
                  child: Text(
                    'True',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    bool correctAnswer = answers[questionNumber];
                    if (correctAnswer == true) {
                      print('you got the anser right');
                    } else {
                      print('You got the answerr wrong');
                    }

                    setState(() {
                      questionNumber++;
                    });
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: FlatButton(
                    minWidth: 350,
                    height: 80,
                    color: Colors.red,
                    child: Text(
                      'False',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      bool correctAnswer = answers[questionNumber];
                      if (correctAnswer == true) {
                        print('you got the anser right');
                      } else {
                        print('You got the answerr wrong');
                      }
                      setState(() {
                        questionNumber++;
                      });
                    }),
              ),
            ),
          ),
          Row(children: scoreKeeper),
        ]);
  }
}
