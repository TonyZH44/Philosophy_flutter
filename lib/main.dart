import 'package:flutter/material.dart';
import 'package:philosophy_flutter/seminar_page.dart';
import 'centered_view/centered_view.dart';

void main() => runApp(PhilosophyApp(
      items: List<ListItem>.generate(
          100,
          (index) =>
              SeminarListTile('Seminar $index', 'seminar subtitle $index')),
));


class PhilosophyApp extends StatelessWidget {

  const PhilosophyApp({Key? key, required this.items}) : super(key: key);

  final List<ListItem> items;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome()
    );
  }
}


class MyHome extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: CenteredView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(bottom: 50),
                  child: const Text('Философия',
                  style: TextStyle(fontSize: 50),
                  ),
                ),
              Image.asset('schoolOfAthens.webp'),
              Container(
                padding: const EdgeInsets.only(top: 30),
                child: const Text('''             Филосо́фия (др.-греч. φιλοσοφία, дословно — «любомудрие; любовь к мудрости») — особая форма познания и система знаний об общих характеристиках, понятиях и принципах реальности (бытия), а также бытия человека, об отношении человека и окружающего его мира.
                К задачам философии на протяжении веков относились как изучение всеобщих законов развития мира и общества, так и изучение самого процесса познания и мышления, а также изучение нравственных категорий и ценностей. К числу предельных философских вопросов относятся, например, вопросы: «Познаваем ли мир?», «Существует ли Бог?», «Что такое истина?», «Что такое хорошо?», «Что есть Человек?», «Что первично — материя или сознание?», «В чём смысл жизни?» и другие.
                '''),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => const SeminarPage()));
                },
                child: Container(
                  color: const Color.fromARGB(255, 197, 192, 192),
                  child: Row(
                    children: [
                      Image.asset('Kant.jpg',
                      scale: 10,),
                      Container(
                        padding: const EdgeInsets.only(left: 100),
                        child: Column(
                          children: const [
                            Text('Урок 1'),
                            Text('Иммануил Кант')
                          ],
                        ),
                      )
                  ],),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }





// child: CustomScrollView(
          //   slivers: [
          //     SliverAppBar(
          //       centerTitle: true,
          //       expandedHeight: 400,
          //       backgroundColor: Colors.white,
            
          //       title: Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: const [
          //           Text('Философия',
          //           style: TextStyle(
          //             color: Colors.black,
          //             fontSize: 50
          //           ),),
          //         ],
          //       ),
          //       pinned: true,
          //       flexibleSpace: FlexibleSpaceBar(
          //         background: Image.asset('schoolOfAthens.webp'),
          //         stretchModes: const [
          //           StretchMode.zoomBackground,
          //           StretchMode.blurBackground
          //         ],
          //       ),
          //     ),
          //     SliverList(
          //         delegate: SliverChildBuilderDelegate(
          //       (BuildContext context, int index) {
          //         final item = items[index];
          //         return ListTile(
          //           title: item.buildTitle(context),
          //           subtitle: item.buildSubtitle(context),
          //           onTap: () {
          //             Navigator.push(
          //                 context,
          //                 MaterialPageRoute(
          //                     builder: (context) => const SeminarPage()));
          //           },
          //         );
          //       },
          //       childCount: items.length,
          //     ))
          //   ],
          // ),
  /*@override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Philosophy'),
                actions: [IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {

                  },

                ),
                ]
            ),
            body: ListView.builder(
              // Let the ListView know how many items it needs to build.
              itemCount: items.length,
              // Provide a builder function. This is where the magic happens.
              // Convert each item into a widget based on the type of item it is.
              itemBuilder: (context, index) {
                final item = items[index];

                return ListTile(
                  title: item.buildTitle(context),
                  subtitle: item.buildSubtitle(context),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SeminarPage())
                    );
                  },
                );
              },
            )
        )
    );
  }*/
}

abstract class ListItem {
  Widget buildTitle(BuildContext context);

  Widget buildSubtitle(BuildContext context);
}

class SeminarListTile implements ListItem {
  final String title;
  final String subtitle;

  SeminarListTile(this.title, this.subtitle);

  @override
  Widget buildSubtitle(BuildContext context) => Text(subtitle);

  @override
  Widget buildTitle(BuildContext context) => Text(title);
}
