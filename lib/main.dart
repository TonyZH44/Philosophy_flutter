import 'package:flutter/material.dart';
import 'package:philosophy_flutter/seminar_page.dart';

void main() => runApp(PhilosophyApp(
      items: List<ListItem>.generate(
          1,
          (index) =>
              SeminarListTile('Seminar $index', 'seminar subtitle $index')),
    ));

class PhilosophyApp extends StatelessWidget {
  const PhilosophyApp({Key? key, required this.items}) : super(key: key);

  final List<ListItem> items;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: true,
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('PhilosophyApp'),
                ],
              ),
              pinned: true,
              expandedHeight: 100,
              flexibleSpace: FlexibleSpaceBar(
                background: Center(
                    child: Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.green,
                  alignment: Alignment.bottomCenter,
                  child: const Text(
                    'TeacherName',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )),
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {},
                )
              ],
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                final item = items[index];
                return ListTile(
                  title: item.buildTitle(context),
                  subtitle: item.buildSubtitle(context),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SeminarPage()));
                  },
                );
              },
              childCount: items.length,
            ))
          ],
        ),
      ),
    );
  }

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
