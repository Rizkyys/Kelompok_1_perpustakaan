import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('images/ellipse_2.png'),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Nama',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'NOVEL WRITER',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'FOLLOW',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis pretium dui. Nunc nec libero eros. Nullam finibus augue non ex molestie ullamcorper. Duis pharetra malesuada urna, vel pellentesque ante fringilla sed.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width, // Lebar container mengikuti lebar layar perangkat
                      height: 51,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: MediaQuery.of(context).size.width, // Lebar container mengikuti lebar layar perangkat
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    style: BorderStyle.solid,
                                    color: Color(0xFF793434),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: MediaQuery.of(context).size.width * 0.16, // Atur posisi ikon kiri
                            top: 11,
                            child: Container(
                              width: 30,
                              height: 30,
                              child: Icon(Icons.star),
                            ),
                          ),
                          Positioned(
                            left: MediaQuery.of(context).size.width * 0.43, // Atur posisi ikon tengah
                            top: 11,
                            child: Container(
                              width: 30,
                              height: 30,
                              child: Icon(Icons.favorite),
                            ),
                          ),
                          Positioned(
                            left: MediaQuery.of(context).size.width * 0.7, // Atur posisi ikon kanan
                            top: 11,
                            child: Container(
                              width: 30,
                              height: 30,
                              child: Icon(Icons.share),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width, // Lebar container mengikuti lebar layar perangkat
                      height: 51,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: MediaQuery.of(context).size.width, // Lebar container mengikuti lebar layar perangkat
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    style: BorderStyle.solid,
                                    color: Color(0xFF793434),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Lastest Book:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset(
                          'images/novel_171.png',
                          width: 100,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lukisan Awan',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet.',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                              // Wrap the text to ensure it doesn't overflow
                              softWrap: true,
                            ),
                            Text(
                              '#Horror #Comedy #16+',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              '10 April 2024',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Author\'s Novel (21)',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
