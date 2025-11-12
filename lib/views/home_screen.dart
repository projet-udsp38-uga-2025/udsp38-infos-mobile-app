import 'package:flutter/material.dart';
import 'package:udsp_38/styles/colors.dart';
import 'package:udsp_38/views/accueil_screen.dart';
import 'package:udsp_38/views/actualites_screen.dart';
import 'package:udsp_38/views/evenements_screen.dart';
import 'package:udsp_38/views/favoris_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    AccueilScreen(),
    ActualitesScreen(),
    EvenementsScreen(),
    FavorisScreen(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('UDSP 38', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
              icon: Icon(Icons.notifications_none, size: 28.0, color: CustomColors.blackColor),
              onPressed: () {},
            ),
          ),
        ],
      ),

      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: CustomColors.blackColor,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Actualités',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Événements',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favoris',
          ),
        ],
      ),
    );
  }
}