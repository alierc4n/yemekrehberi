import 'package:flutter/material.dart';
import 'package:yemekrehberison/Favoriler.dart';
import 'package:yemekrehberison/Kategoriler.dart';
import 'package:yemekrehberison/Profil.dart';
import 'package:yemekrehberison/anasayfaa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[    anasayfaa(),    Kategoriler(),    Favoriler(),    Profil(),  ];

  static const List<IconData> _unselectedIcons = [    Icons.home_outlined,    Icons.restaurant_menu_outlined,    Icons.favorite_border_outlined,    Icons.person_outline,  ];

  static const List<IconData> _selectedIcons = [    Icons.home,    Icons.restaurant_menu,    Icons.favorite_border,    Icons.person,  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Image.network("https://i.hizliresim.com/8ghbbr8.png", width: 250),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black87,
        backgroundColor: Colors.white,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 0 ? _selectedIcons[0] : _unselectedIcons[0]),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 1 ? _selectedIcons[1] : _unselectedIcons[1]),
            label: 'Kategoriler',
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 2 ? _selectedIcons[2] : _unselectedIcons[2]),
            label: 'Favoriler',
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 3 ? _selectedIcons[3] : _unselectedIcons[3]),
            label: 'Profil',
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(237, 237, 239, 1),
    );
  }
}
