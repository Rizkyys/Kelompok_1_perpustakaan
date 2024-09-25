import 'package:flutter/material.dart';
import 'package:perpustakaan/screens/homepage.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
          },
        ),
        title: Text('Edit Profile', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.brown, // Warna latar belakang untuk bagian bawah layar
            height: MediaQuery.of(context).size.height / 2, // Setengah dari tinggi layar
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 70,
                              backgroundImage: AssetImage('images/ellipse_2.png'),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.camera_alt,
                              size: 30,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Barra',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'blabloh@gmail.com',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  _buildProfileItem('EMAIL', 'blabloh@gmail.com'),
                  SizedBox(height: 10),
                  _buildProfileItem('NAMA', 'Muhammad Barra'),
                  SizedBox(height: 10),
                  _buildProfileItem('GENDER', 'LAKI-LAKI'),
                  SizedBox(height: 10),
                  _buildProfileItem('PHONE', '+62 861-3141-1312'),
                  SizedBox(height: 10),
                  _buildProfileItem('TANGGAL LAHIR', '2 MARET 2007'),
                  SizedBox(height: 20),
                  _buildChangePasswordButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileItem(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 10),
        Text(
          value,
          style: TextStyle(
            fontSize: 13,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _buildChangePasswordButton() {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF562424), // Warna latar belakang tombol
        ),
        onPressed: () {
          // Handle button press
        },
        child: Text(
          'CHANGE PASSWORD',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Ubah warna teks menjadi putih
          ),
        ),
      ),
    );
  }
}

