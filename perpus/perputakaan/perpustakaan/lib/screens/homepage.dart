import 'package:flutter/material.dart';
import 'package:perpustakaan/screens/notification.dart'; // Sesuaikan dengan nama file yang benar
import 'package:perpustakaan/screens/profile.dart';
import 'package:perpustakaan/screens/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perpustakaan',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeContent(),
    Text('Search Page'),
    Text('Favorites Page'),
    Text('Notifications Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _selectedIndex == 0
              ? 'Home'
              : _selectedIndex == 1
                  ? 'Search'
                  : _selectedIndex == 2
                      ? 'Favorites'
                      : _selectedIndex == 3
                          ? 'Notifications'
                          : '',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
            child: CircleAvatar(
              backgroundImage: AssetImage('images/ellipse_2.png'), // Ganti dengan path gambar profil
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationPage()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.settings, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.0),
          Text(
            'Home Page',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 2.0),
            height: 1.0,
            color: Colors.black,
            width: 120.0,
          ),
          SizedBox(height: 16.0),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 140.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  color: Color(0xFFA4A4A4),
                ),
                child: Center(
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    child: Image.asset(
                      'images/novel_1.png', // Ganti dengan path gambar Anda
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Text(
            'Recently Viewed',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildRecentlyViewedImage('images/novel_3.png', 'Pulang - TERE', 4),
              buildRecentlyViewedImage('images/novel_3.png', 'Pulang - TERE', 3),
              buildRecentlyViewedImage('images/novel_3.png', 'Pulang - TERE', 5),
            ],
          ),
          SizedBox(height: 16.0),
          Text(
            'For You',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      'images/novel_11.png', // Ganti dengan path gambar Anda
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kala Senja Menyapa',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Rosa Maria Aguando',
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.list, size: 20),
                              SizedBox(width: 4.0),
                              Text(
                                '210 bab',
                                style: TextStyle(
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vehicula nulla sed dui lobortis viverra.',
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Row(
                            children: [
                              TextButton(
                                onPressed: () {
                                  // Aksi ketika teks "More.." ditekan
                                },
                                child: Text(
                                  'More..',
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Container(
                                width: 100.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: Colors.brown,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Center(
                                  child: Text(
                                    'PINJAM',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRecentlyViewedImage(String imagePath, String title, int rating) {
    return Container(
      width: 105.0,
      height: 110.0,
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Image.asset(
                imagePath, // Ganti dengan path gambar Anda
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 4.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                rating, (index) => Icon(Icons.star, color: Colors.amber, size: 20.0)),
          ),
          SizedBox(height: 4.0),
          Text(title), // Tambahkan teks di sini
        ],
      ),
    );
  }
}
