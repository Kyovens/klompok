import 'package:flutter/material.dart';
import 'package:m07/privacy.dart';

class Screen07 extends StatefulWidget {
  const Screen07({super.key});

  @override
  State<Screen07> createState() => _Screen07State();
}

class _Screen07State extends State<Screen07> {
  int _currenIndex = 0;

  void onTapped(int index) {
    setState(
      () {
        _currenIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("211110870_Mhd.Reza"),
        // centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
            color: Colors.red,
          ),
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (context) => const [
              PopupMenuItem(
                value: 0,
                child: Text('Privacy'),
              ),
              PopupMenuItem(
                value: 1,
                child: Text('Support'),
              ),
              PopupMenuItem(
                value: 2,
                child: Text('Feedback'),
              ),
            ],
            onSelected: ((value) => setState(() {
                  if (value == 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Privacy01(),
                      ),
                    );
                  } else if (value == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Support01(),
                      ),
                    );
                  }
                })),
          ),
        ],
      ),
      // drawer: Drawer(
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text('Text 1'),
      //     ],
      //   ),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                      child: Image.asset(
                        'assets/img1.png',
                        width: 250,
                      ),
                    ),
                    const Positioned(
                      top: 300,
                      left: 25,
                      child: Text(
                        'Legendary Youngest Son',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Stack()
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (val) {},
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_fire_department_rounded),
            label: 'Trending',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Genres',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        // currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

class Settings01 extends StatefulWidget {
  const Settings01({super.key});

  @override
  State<Settings01> createState() => _Settings01State();
}

class _Settings01State extends State<Settings01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
