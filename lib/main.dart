import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_kelompok/M02/profile_screen.dart';
import 'package:tugas_kelompok/M03/todos.dart';
import 'package:tugas_kelompok/M04/todos.dart';
import 'package:tugas_kelompok/M05/provider05.dart';
import 'package:tugas_kelompok/M05/screen05.dart';
import 'package:tugas_kelompok/M06/provider06.dart';
import 'package:tugas_kelompok/M06/screen06.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Provider06(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Provider05()),
      ],
      child: MaterialApp(
        title: 'Tugas Kelompok AHA',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const Icon(Icons.menu),
        title: const Text("Tugas Kelompok"),
        automaticallyImplyLeading: true,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top: 90),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('Text 1')],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen02(),
                  ),
                );
              },
              child: const Text('Latihan Minggu 02'),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Minggu03(),
                  ),
                );
              },
              child: const Text('Latihan Minggu 03'),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TodosAddPage(),
                  ),
                );
              },
              child: const Text('Latihan Minggu 04'),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Screen05(),
                  ),
                );
              },
              child: const Text('Latihan Minggu 05'),
            ),
            const Divider(),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Screen06(),
                    ),
                  );
                },
                child: const Text('Latihan Minggu 06'))
          ],
        ),
      ),
    );
  }
}
