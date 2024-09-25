import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SettingsPage(),
  ));
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('SETTINGS'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xFFFCFCFC),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/ellipse_2.png'),
              ),
              SizedBox(height: 20),
              Text(
                'Nama',
                style: TextStyle(
                  color: Color(0xFF444444),
                  fontSize: 20,
                  fontFamily: 'JetBrains Mono',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'blablabla@gmail.com',
                style: TextStyle(
                  color: Color(0xFF444444),
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                '1009134121',
                style: TextStyle(
                  color: Color(0xFF444444),
                  fontSize: 13,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFF3F3F3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Account',
                      style: TextStyle(
                        color: Color(0xFF444444),
                        fontSize: 20,
                        fontFamily: 'JetBrains Mono',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 20),
                    IconTextRow(
                      icon: Icons.history,
                      text: 'Riwayat Peminjaman',
                    ),
                    SizedBox(height: 20),
                    IconTextRow(
                      icon: Icons.hourglass_bottom,
                      text: 'Waiting list',
                    ),
                    SizedBox(height: 20),
                    IconTextRow(
                      icon: Icons.favorite,
                      text: 'Wish list',
                    ),
                    SizedBox(height: 20),
                    IconTextRow(
                      icon: Icons.bookmark,
                      text: 'Bookmark',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFF3F3F3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'General',
                      style: TextStyle(
                        color: Color(0xFF444444),
                        fontSize: 20,
                        fontFamily: 'JetBrains Mono',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 20),
                    IconTextRow(
                      icon: Icons.description,
                      text: 'Terms Of Use',
                    ),
                    SizedBox(height: 20),
                    IconTextRow(
                      icon: Icons.rule,
                      text: 'Rules',
                    ),
                    SizedBox(height: 20),
                    IconTextRow(
                      icon: Icons.money,
                      text: 'Denda',
                    ),
                    SizedBox(height: 20),
                    IconTextRow(
                      icon: Icons.info,
                      text: 'Tentang Aplikasi',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        width: 200, // Adjust the width according to your preference
        height: 50, // Adjust the height according to your preference
        child: FloatingActionButton(
          onPressed: () {
            // Action when logout button is pressed
          },
          backgroundColor: Color(0xFF8B4513), // Brown color
          child: Text(
            'LOG OUT',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'JetBrains Mono',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class IconTextRow extends StatelessWidget {
  final IconData icon;
  final String text;

  IconTextRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Color(0xFF444444),
          size: 24,
        ),
        SizedBox(width: 10),
        Text(
          text,
          style: TextStyle(
            color: Color(0xFF444444),
            fontSize: 15,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
