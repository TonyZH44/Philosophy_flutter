import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:philosophy_flutter/seminar_page_1.dart';
import 'centered_view/centered_view.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

void main() => runApp(const PhilosophyApp());


class PhilosophyApp extends StatelessWidget {

  const PhilosophyApp({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          fontSizeFactor: 1.1,
          fontSizeDelta: 0,
        )
      ),
      home: MyHome()
    );
  }
}


class MyHome extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                    Color.fromARGB(255, 206, 206, 206),
                    Color.fromARGB(255, 255, 255, 255),
                  ])
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('Icon-192.png',
                      height: 50,
                      width: 50,
                    ),
                    const Text('Афинская Школа',
                      style: TextStyle(
                        
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => const SeminarPage1()));
                },
                title: const Text('Урок 1.',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ]),),
        body: FooterView(
          children: [CenteredView(
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
                Философия существует в виде различных областей и направлений, которые могут противостоять и дополнять друг друга. Сейчас к философии относят: метафизику, эпистемологию, логику, этику, эстетику, социальную и политическую философию и философию науки.
                Те области познания, для которых удаётся выработать ясную и работоспособную методологическую парадигму, выделяются из философии в научные дисциплины, как, например, из древней философии выделились физика, биология и психология.
                '''),
              ),
            ]),
          ),],
        footer: Footer(
          child: const Text('Toneyev Anton, 2023'),
          padding: const EdgeInsets.all(20),
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
