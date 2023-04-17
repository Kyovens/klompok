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
    final List _body = [
      const Home01(),
      const Settings01(),
    ];
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
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: _body[_currenIndex],
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
    return Scaffold(
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}

class Home01 extends StatefulWidget {
  const Home01({super.key});

  @override
  State<Home01> createState() => _Home01State();
}

class _Home01State extends State<Home01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: ClipRect(
              child: Banner(
                message: "Populer",
                location: BannerLocation.bottomStart,
                color: Colors.red,
                child: Row(children: <Widget>[
                  Image.asset(
                    'assets/img1.png',
                    width: 200,
                  ),
                  Image.asset(
                    'assets/img2.webp',
                    width: 200,
                  ),
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
