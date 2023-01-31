import 'package:flutter/material.dart';
import 'centered_view/centered_view.dart';
import 'package:footer/footer_view.dart';
import 'package:footer/footer.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
        body: FooterView(
          footer: Footer(
            child: const Text('Toneyev Anton, 2023'),
            padding: const EdgeInsets.all(20),
          ),
          children: [CenteredView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: const QuestionBlock('1. Иммануил Кант родился в городе:', <Answer>[
                    Answer('Кёнигсберг', true),
                    Answer('Мюнхен', false),
                    Answer('Берлин', false)
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: const QuestionBlock('2. Иммануил Кант родился в:', <Answer>[
                    Answer('1744', false),
                    Answer('1724', true),
                    Answer('1824', false)
                  ]),
                ),

                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: const QuestionBlock('3.Родоначальник немецкой … философии:', <Answer>[
                    Answer('постоянной', false),
                    Answer('периодической', false),
                    Answer('классической', true)
                  ]),
                ),

                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: const QuestionBlock('4. Главным философским произведением Канта является:', <Answer>[
                    Answer('«Критика практического разума»', false),
                    Answer('«Критика чистого разума»', true),
                    Answer('«Критика способности суждения»', false)
                  ]),
                ),

                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: const QuestionBlock('5. Кант не разделял безграничной веры в силы человеческого:', <Answer>[
                    Answer('бытия', false),
                    Answer('разума', true),
                    Answer('существования', false)
                  ]),
                ),

                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: const QuestionBlock('6. Единство, множество, цельность:', <Answer>[
                    Answer('категории качества', false),
                    Answer('категории модальности', false),
                    Answer('категории количества', true)
                  ]),
                ),

                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: const QuestionBlock('7. Реальность, отрицание, ограничение:', <Answer>[
                    Answer('категории количества', false),
                    Answer('категории качества', true),
                    Answer('категории отношения', false)
                  ]),
                ),

                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: const QuestionBlock('8. Субстанция и принадлежность, причина и следствие, взаимодействие:', <Answer>[
                    Answer('категории отношения', true),
                    Answer('категории количества', false),
                    Answer('категории качества', false)
                  ]),
                ),
              ],
            ),
          ),
        ]));
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
          //color: Colors.blueGrey,
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
  Color _tileColor = Colors.white;

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