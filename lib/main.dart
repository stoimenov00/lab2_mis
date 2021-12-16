import 'package:flutter/material.dart';
import './clothes_question.dart';
import './clothes_answer.dart';

//void main() => runApp(HelloWorld());
void main() {
  runApp(HelloWorld());
}

class HelloWorld extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<HelloWorld> {
  void _iWasTapped() {
    setState(() {
      if (questionIndex == 3) {
        questionIndex = 0;
      } else {
        questionIndex += 1;
      }
    });
  }

  var questions = [
    {
      'question': "Кој бренд го сакате?",
      'answer': [
        'Replay',
        'Levis',
        'Diesel',
        'Guess',
      ],
    },
    {
      'question': "За која колекција сте заинтересирани?",
      'answer': [
        'Зимна',
        'Летна',
      ],
    },
    {
      'question': "Koja е вашата величина?",
      'answer': [
        'S',
        'М',
        'L',
        'XL'
      ],
    },
    {
      'question': "Од која колекција сакате да ги разгледате производите?",
      'answer': [
        'Нова колекција',
        'Претходна колекција со попуст',
      ],
    },
  ];
  var questionIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Clothes quiz",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fidan Stoimenov 193086"),
        ),
        body: Column(
          children: [
            ClothesQuestion(questions[questionIndex]['question'].toString()),
            ...(questions[questionIndex]['answer'] as List<String>).map((answer) {
              return ClothesAnswer(_iWasTapped, answer);
            }),
          ],
        ),
      ),
    );
  }
}
