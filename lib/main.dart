import 'package:flutter/material.dart';

// ************* Awensome Icon in flutter ******************************
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'aboutmepaage.dart';
import 'homepage.dart';
import 'settingpage.dart';
import 'storepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App 2",
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Flutter Mini Project 2"),
            backgroundColor: Colors.black,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.person_pin),
                  text: "About me",
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: "Setting",
                ),
                Tab(
                  icon: Icon(Icons.local_grocery_store),
                  text: "Store",
                ),
              ],
            ),
          ),
          drawer: Drawer(
            // backgroundColor: Colors.blue,
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: const Text("Sanjiv Kushwaha"),
                  accountEmail: const Text("sanjiv21101@iiitnr.edu.in"),
                  // currentAccountPicture: CircleAvatar(
                  //   backgroundColor: Colors.blue,
                  //   child: Image.asset(
                  //     'image/joker.jpg',
                  //     height: 60,
                  //     width: 60,
                  //   ),
                  // ),
                  currentAccountPicture: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                      image: const DecorationImage(
                        image: AssetImage('image/sanjiv.png'),
                        fit: BoxFit.cover,
                        // fit: BoxFit.fill,
                        // fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.home,
                  ),
                  title: const Text('Home'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.person_pin,
                  ),
                  title: const Text('About me'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.settings,
                  ),
                  title: const Text('Setting'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.local_grocery_store,
                  ),
                  title: const Text('Store'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const FaIcon(FontAwesomeIcons.heart),
                  // leading: const Icon(
                  //   Icons.apple_sharp,
                  // ),
                  title: const Text('AWensome Icon'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const FaIcon(FontAwesomeIcons.jetFighter),
                  title: const Text('AWensome Icon'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const FaIcon(FontAwesomeIcons.solidLightbulb,
                      color: Colors.red),
                  title: const Text('AWensome Icon'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading:
                      const FaIcon(FontAwesomeIcons.google, color: Colors.red),
                  title: const Text('Google'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.bagShopping,
                    color: Colors.red,
                  ),
                  title: const Text('Shopping'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          body: const TabBarView(children: [
            HomePage(),
            AboutmePage(),
            SettingPage(),
            StorePage(),
          ]),
        ),
      ),
    );
  }
}
