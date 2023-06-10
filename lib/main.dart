import 'package:flutter/material.dart';
import 'package:testing/favorites_page.dart';
import 'package:testing/history_page.dart';
import 'package:testing/home_page.dart';
import 'package:testing/profile_page.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPage();
}

class _RootPage extends State<RootPage> {
  int currentPage = 0;

   final List<Widget> _children = [
   const HomePage(),
   const Favourite(),
   const History(),
   const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: _children[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightBlue,
        items: const [
          BottomNavigationBarItem(
            icon:  Icon(Icons.newspaper_outlined),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.favorite),
            label: 'Facorites',
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.history),
            
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.person_3),
            label: 'Profile',
          ),
        ],
        currentIndex: currentPage,
          onTap: (int index){setState((){currentPage = index;});},
          fixedColor: Colors.white, // Change the active item color here
          type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
