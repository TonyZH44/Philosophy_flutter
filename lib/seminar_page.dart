import 'package:flutter/material.dart';

class SeminarPage extends StatefulWidget {
  const SeminarPage({Key? key}) : super(key: key);

  @override
  State<SeminarPage> createState() => _SeminarPageState();
}

class _SeminarPageState extends State<SeminarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TestSeminar')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            style: TextStyle(fontSize: 20),
            ),
            QuestionBlock('Question 1', List<Answer>.generate(4,
                    (index) => Answer('answer $index', true))),
            const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              style: TextStyle(fontSize: 20),
            ),

          ],
        ),
      ),
    );
  }
}


class QuestionBlock extends StatefulWidget {

  final String questionText;
  final List<Answer> answers;

  QuestionBlock(this.questionText, this.answers, {Key? key}) : super(key: key);

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

  String text;
  bool isCorrect;

  Answer(this.text, this.isCorrect, {Key? key}) : super(key: key);

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