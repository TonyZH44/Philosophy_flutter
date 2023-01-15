import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('TestSeminar')),
        body: SingleChildScrollView(
        child: Column(
          children: const [
            QuestionBlock('Иммануил Кант родился в городе:', <Answer>[
              Answer('Кёнигсберг', true),
              Answer('Мюнхен', false),
              Answer('Берлин', false)
            ]),
            QuestionBlock('Иммануил Кант родился в:', <Answer>[
              Answer('1744', false),
              Answer('1724', true),
              Answer('1824', false)
            ]),
            QuestionBlock('Родоначальник немецкой … философии:', <Answer>[
              Answer('постоянной', false),
              Answer('периодической', false),
              Answer('классической', true)
            ]),
            QuestionBlock('Главным философским произведением Канта является:', <Answer>[
              Answer('«Критика практического разума»', false),
              Answer('«Критика чистого разума»', true),
              Answer('«Критика способности суждения»', false)
            ]),
            QuestionBlock('Кант не разделял безграничной веры в силы человеческого:', <Answer>[
              Answer('бытия', false),
              Answer('разума', true),
              Answer('существования', false)
            ]),
            QuestionBlock('Единство, множество, цельность:', <Answer>[
              Answer('категории качества', false),
              Answer('категории модальности', false),
              Answer('категории количества', true)
            ]),
            QuestionBlock('Реальность, отрицание, ограничение:', <Answer>[
              Answer('категории количества', false),
              Answer('категории качества', true),
              Answer('категории отношения', false)
            ]),
            QuestionBlock('Субстанция и принадлежность, причина и следствие, взаимодействие:', <Answer>[
              Answer('категории отношения', true),
              Answer('категории количества', false),
              Answer('категории качества', false)
            ]),
          ],
        )
    ));
  }

}




class QuestionBlock extends StatefulWidget {

  final String questionText;
  final List<Answer> answers;

  const QuestionBlock(this.questionText, this.answers, {Key? key}) : super(key: key);

  @override
  State<QuestionBlock> createState() => _QuestionBlockState();
}

class _QuestionBlockState extends State<QuestionBlock> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blueGrey,
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(10),
          child: Text(
            widget.questionText,
            style: TextStyle(fontSize: 25),),),
        Column(children: widget.answers,)
      ],
    );
  }
}

class Answer extends StatefulWidget {

  final String text;
  final bool isCorrect;

  const Answer(this.text, this.isCorrect, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {

    return _AnswerState();
  }


}
class _AnswerState extends State<Answer>{

  late String text = widget.text;
  late bool isCorrect = widget.isCorrect;
  Color _tileColor = Colors.lightBlueAccent;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: _tileColor,
      title: Text(text),
      onTap: () {
        if (isCorrect){
          setState(() {
            _tileColor = Colors.green;
          });
        } else {
          setState(() {
            _tileColor = Colors.red;
          });
        }
      },

    );
  }

}