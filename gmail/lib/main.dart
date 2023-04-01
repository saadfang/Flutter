import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: _buildList()),
      ),
      backgroundColor: Colors.amber,
    );
  }

  List<Widget> _buildList() {
    List<Widget> list = [];
    list.add(SearchBarCustom());

    for (int i = 0; i < 10; i++) {
      list.add(ListItem(subtitle: 'subtitle $i', title: 'title $i'));
    }
    return list;
  }
}

class SearchBarCustom extends StatelessWidget {
  const SearchBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 48,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          children: [
            Icon(Icons.menu),
            Container(
              width: 16,
            ),
            Expanded(
              child: TextField(
                controller: TextEditingController(),
                expands: false,
                maxLength: 50,
                maxLines: 1,
                autofocus: true,
              ),
            ),
            Container(
              width: 16,
            ),
            CircleAvatar()
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  ListItem({
    super.key,
    required this.subtitle,
    required this.title,
  });

  String title;
  String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.pink,
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      isThreeLine: true,
      trailing: FittedBox(
        child: Column(children: [
          Text('date'),
          IconButton(onPressed: () {}, icon: Icon(Icons.star))
        ]),
      ),
    );
  }
}
