import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:bulleted_list/bulleted_list.dart';

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
            const Text('''            Трансцендентное - это то, что находится вне сознания и недоступно для восприятия сознанием.
            Трансцендентальное - то, что имманентно сознанию, доступно познанию. Например, в агностицизме считается, что истина недостижима. Следовательно, можно сказать, что они исходят из принципа трансцендентальности истины.
            Объектом исследования "Трансцендентальной эстетики" является чувственность.
            Чувственность Кант рассматривает как способность представлять предметы за счет того, что материальные предметы на нас воздействуют. Кант также вводит понятия созерцание - это чувственные представления, которые образуются за счет воздействия предметов и вещей, которые существуют вне чувственности, на нас.
            Значит, с точки зрения Канта вещи даны познающему субъекту в чувственности. Однако, Кант выделяет такое понятие, как вещь в себе.
            Вещь в себе - вещи, которые существуют сами по себе, независимо от чувственности и сознания. Такие вещи в себе по Канту непознаваемы. Познанию подлежат явления. Явления - чувственные образы предметов.''',
            style: TextStyle(fontSize: 18),
            ),
            const BulletedList(listItems: [
              Text('Мир в себе - непознаваемый мир',
                style: TextStyle(fontSize: 18),),
              Text('Мир явлений - познаваемый мир',
                style: TextStyle(fontSize: 18),)]
            ),
            const Text('''            В разделе "Трансцендентальная аналитика" произведения "Критики чистого разума" Кант приводит свое учение о рассудке. 
            Здесь Кант отвечает на второй вопрос - как возможно естествознание как наука? '
            По мнению Канта, подобно тому, как есть априорные формы чувственности, также есть и априорные формы рассудка. 
            Такими априорными началами рассудка являются понятия и основоположения. 
            Поэтому в "Трансцендентальной аналитике" выделяется две части:''',
              style: TextStyle(fontSize: 18),
            ),
            const BulletedList(listItems: [
              Text('аналитика понятий',
                style: TextStyle(fontSize: 18),),
              Text('аналитика основоположений',
                style: TextStyle(fontSize: 18)),]
            ),
            const Text('''            Понятия нужны для того, чтобы были возможны суждения рассудка.
            Рассудок, по мнению Канта - это способность к суждениям за счет понятий.
            Кант выделяет чистые рассудочные понятия - это такие понятия, которые не зависят от опыта.
            Такие чистые понятия Кант считал категориями. Кант выделял четыре группы таких суждений:\n''',
              style: TextStyle(fontSize: 18),
            ),
            BulletedList(bulletType: BulletType.numbered, listItems: [
              Column(children: const [
                Text('Суждение количества. В этой группе выделяется 3 вида суждений:',
                style: TextStyle(fontSize: 18),),
                BulletedList(listItems: [
                  Text('общие',
                    style: TextStyle(fontSize: 18),),
                  Text('частные',
                      style: TextStyle(fontSize: 18)),
                  Text('единичные',
                      style: TextStyle(fontSize: 18))
                ],)
              ]),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                Text('Суждения качества',
                  style: TextStyle(fontSize: 18),),
                BulletedList(listItems: [
                  Text('утвердительные',
                    style: TextStyle(fontSize: 18),),
                  Text('отрицательные',
                      style: TextStyle(fontSize: 18)),
                  Text('бесконечные',
                      style: TextStyle(fontSize: 18))
                ],)
              ]),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Суждения отношения:',
                      style: TextStyle(fontSize: 18),),
                    BulletedList(listItems: [
                      Text('категорические суждения (утвердительные)',
                        style: TextStyle(fontSize: 18),),
                      Text('условные суждения (гипотетические)',
                          style: TextStyle(fontSize: 18)),
                      Text('разделительные',
                          style: TextStyle(fontSize: 18))
                    ],)
                  ]),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Суждения модальности',
                      style: TextStyle(fontSize: 18),),
                    BulletedList(listItems: [
                      Text('проблематические суждения, выражающие возможность',
                        style: TextStyle(fontSize: 18),),
                      Text('ассерторические суждения, выражающие фактическое состояние',
                          style: TextStyle(fontSize: 18)),
                      Text('аподиктические суждения, выражающие необходимость',
                          style: TextStyle(fontSize: 18))
                    ],)
                  ]),]
            ),
            const Text('   Кант считал, что категории являются предикатами этих суждений.\n '
                '   Кант выделил систему из 12 категорий, которые разбил на 4 группы.\n',
            style: TextStyle(fontSize: 18),
            ),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: DataTable(columns: const [
                DataColumn(label: Text('Категории количества',style: TextStyle(fontSize: 15),)),
                DataColumn(label: Text('Категории качества',style: TextStyle(fontSize: 15))),
                DataColumn(label: Text('Категории отношения',style: TextStyle(fontSize: 15))),
                DataColumn(label: Text('Категории модальности',style: TextStyle(fontSize: 15)))
                ],
                  rows: const [
                    DataRow(cells: [
                      DataCell(
                          Text('1.единство', style: TextStyle(fontSize: 15))),
                      DataCell(
                          Text('1.реальность', style: TextStyle(fontSize: 15))),
                      DataCell(
                          Text('1.субстанция и принадлежность', style: TextStyle(fontSize: 15))),
                      DataCell(
                          Text('1.возможности и невозможности', style: TextStyle(fontSize: 15)))
                    ]),
                    DataRow(cells: [
                      DataCell(
                          Text('2.множество', style: TextStyle(fontSize: 15))),
                      DataCell(
                          Text('2.отрицание', style: TextStyle(fontSize: 15))),
                      DataCell(
                          Text('2.причины и следствия', style: TextStyle(fontSize: 15))),
                      DataCell(
                          Text('2.существование и несуществование', style: TextStyle(fontSize: 15)))
                    ]),
                    DataRow(cells: [
                      DataCell(
                          Text('3.совокупность', style: TextStyle(fontSize: 15))),
                      DataCell(
                          Text('3.ограничение', style: TextStyle(fontSize: 15))),
                      DataCell(
                          Text('3.взаимодействия', style: TextStyle(fontSize: 15))),
                      DataCell(
                          Text('3.необходимость и случайность', style: TextStyle(fontSize: 15)))
                    ])]
              ),
            ),
            const Text('''           Кант фактически утверждает, что вещи, существуют сами по себе вне нашей чувственности и сознания. 
            Эти вещи аффецируют (воздействуют) на нашу чувственность. Это воздействие приводит к представлениям. 
            А наше сознание упорядочивает поток чувственных представлений: с помощью категорий пространства и времени. 
            Пространство и время как априорные формы чувственности находятся в сознании трансцендентального субъекта. 
            Таким образом, по мнению Канта, пространство и время составляют определенную пространственно - временную сетку, которую трансцендентальный познающий субъект накладывает на поток чувственных представлений. 
            За счет этого происходит упорядочивание этих чувственных впечатлений. 
            А дальше упорядоченные впечатления сводятся к определенному единству за счет наложения категорий.
            Таким образом, по мнению Канта, знание в естествознании есть сочетание формы и содержания. Знание в естественных науках чувственно по содержанию, так как получено из экспериментов, и априорно по форме, так как опирается на систему категорий и основоположений, которые также являются априорными.
            Кант совершил революцию в теории познания. 
            Это связано со следующим суждением. Кант считал, что не характеристики и структуры вещи определяют предмет и способы познания, а специфика познающего субъекта определяет как способы познания, так и формирует предмет знания. 
            Кант совершил переворот в отношении самого понятия мышления. За счет априорных форм чувственности и априорных форм рассудка возможно как само познание, так и познавательный опыт. Следовательно, то самое единство, под которое подводится упорядоченный поток чувственных представлений, находится в самом субъекте познания или в трансцендентальном субъекте. 
            Качественным условием подведения потока представлений под единство Кант увидел в апперцепции трансцендентального субъекта. Апперцепция - это акт самосознания, которым обладает субъект. Акт самосознания Кант определил как трансцендентальное единство апперцепции. В единстве самосознания созерцания и понятия объединены. За счет этого рассудок может с помощью понятий судить о чувственных созерцаниях, чувственных образах предметов. 
            Трансцендентальное единство апперцепции - это качественное условие для сведения всех чувственных представлений в конечное единство. Таким образом, переворот в познании, который совершил Кант, заключается в том, что законы природы познаются не из самой природы, как считали раньше. Кант считал наоборот, что рассудок определяет законы природы. 
            Следовательно, если обратиться к основному вопросу философии, который сформулируем как: "что первично - бытие или мышление?", то получим, что Кант идеалистически решает основной вопрос философии, поскольку, по мнению Канта, бытие выходит из мышления а не наоборот.
            Наконец, переходим к третьему вопросу "Как возможна метафизика как наука ?". Этот вопрос разрабатывается в той части "Критики чистого разума", которая имеет название "Трансцендентальная диалектика". Здесь Кант определяет различие между рассудком и разумом.''',
            style: TextStyle(fontSize: 18),),

            QuestionBlock('Вопрос 1. Определяющее значение для философии Нового времени имело:',
                <Answer>[
                  Answer('Развитие протестантизма как нового направления мирового христианства', false),
                  Answer('Становление абсолютных монархий', false),
                  Answer('Формирование наук, в первую очередь, естественных', true),
                  Answer('Подъём народного и революционного движения', false)
                ]),


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