import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SeminarPage extends StatefulWidget {
  const SeminarPage({Key? key}) : super(key: key);

  @override
  State<SeminarPage> createState() => _SeminarPageState();
}

class _SeminarPageState extends State<SeminarPage> {

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=lrOi2870QwY&t=5s&ab_channel=%D0%9F%D1%80%D0%B0%D0%B2%D0%BE%D0%B5%D0%BF%D0%BE%D0%BB%D1%83%D1%88%D0%B0%D1%80%D0%B8%D0%B5%D0%98%D0%BD%D1%82%D1%80%D0%BE%D0%B2%D0%B5%D1%80%D1%82%D0%B0").toString(),
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );



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
            QuestionBlock('Вопрос 1. Определяющее значение для философии Нового времени имело:',
                <Answer>[
                  Answer('Развитие протестантизма как нового направления мирового христианства', false),
                  Answer('Становление абсолютных монархий', false),
                  Answer('Формирование наук, в первую очередь, естественных', true),
                  Answer('Подъём народного и революционного движения', false)
                ]),
            const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              style: TextStyle(fontSize: 20),
            ),
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressColors: const ProgressBarColors(
                playedColor: Colors.amber,
                handleColor: Colors.amberAccent,
              ),
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