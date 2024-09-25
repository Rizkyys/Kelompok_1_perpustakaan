import 'package:flutter/material.dart';
import 'package:perpustakaan/screens/Notification.dart';
import 'package:perpustakaan/screens/detialbook.dart';
import 'package:perpustakaan/screens/profile.dart';
import 'package:perpustakaan/screens/homepage.dart';
import 'package:perpustakaan/screens/loginpage.dart';
import 'package:perpustakaan/screens/registerpage.dart';
import 'package:perpustakaan/screens/search.dart';



void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => MainScreen(),
        '/search': (context) => SearchPage(),
        '/create': (context) => Center(child: Text('Create Post Page')),
        '/notification': (context) => NotificationPage(),
        '/profile': (context) => ProfilePage(),
        '/setting': (context) => ProfilePage(),
        '/detialbook' : (context) => DetailPage(),

      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.brown),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          MyHomePage(),
          SearchPage(),
          Center(child: Text('Create Post Page')),
          Center(child: Text('Notifications Page')),
        ],
      ),
    );
  }
}
