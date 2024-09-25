import 'package:flutter/material.dart';
import 'package:perpustakaan/screens/widgets/Navbar_Buttom.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool showSearch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(
                'images/ellipse_2.png'), // Ganti dengan path gambar Anda
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.message, color: Colors.black),
            onPressed: () {
              // Aksi ketika ikon pesan ditekan
            },
          ),
          IconButton(
            icon: Icon(Icons.settings, color: Colors.black),
            onPressed: () {
              // Aksi ketika ikon pengaturan ditekan
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Search For Novel',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                height: 1.0,
                color: Colors.black,
              ),
              SizedBox(height: 16.0), // Adding space below the line
              if (showSearch)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8.0), // Add a bit of space
                    Container(
                      width: 278,
                      height: 43,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 12),
                          Icon(Icons.search, color: Colors.black),
                          SizedBox(width: 8),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search...",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              SizedBox(height: 16.0), // Adding space between search and genre containers
              // Genre containers
              Wrap(
                spacing: 8.0,
                children: [
                   buildGenreContainer('Trending'),
                    buildGenreContainer('Most Favorite'),
                  buildGenreContainer('Non-Fiction'),
                  buildGenreContainer('Sci-fi'),
                  buildGenreContainer('Fiction'),
                  buildGenreContainer('Romance'),
                  buildGenreContainer('Comedy'),
                  buildGenreContainer('Fantasy'),
                  buildGenreContainer('Short Story'),
                  buildGenreContainer('Novel'),
                  buildGenreContainer('Poetry'),
                  buildGenreContainer('History'),
                  buildGenreContainer('Adventure'),
                  buildGenreContainer('Horror'),
                  buildGenreContainer('Action'),
                  buildGenreContainer('Documentary'),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:  BottomNavBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            showSearch = !showSearch;
          });
        },
        child: Icon(showSearch ? Icons.close : Icons.search),
      ),
    );
  }

  Widget buildGenreContainer(String genre) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 50.0, // Set height for the container
          decoration: BoxDecoration(
            color: Colors.brown, // Warna coklat
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(
            child: Text(
              genre,
              style: TextStyle(
                color: Colors.white, // Teks putih
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

