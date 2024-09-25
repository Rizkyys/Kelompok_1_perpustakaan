import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Notification',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.message),
                onPressed: () {
                  // Aksi ketika ikon ditekan
                },
              ),
            ),
          ],
        ),
        body: SingleChildScrollView( // Tambahkan SingleChildScrollView di sini
          child: Column(
            children: List.generate(7, (index) {
              return Column(
                children: [
                  Container(
                    width: double.infinity, // Lebarkan konten agar sesuai dengan lebar layar
                    height: 78,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFFD9D9D9),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 72,
                          top: 0,
                          child: SizedBox(
                            width: 225,
                            height: 21,
                            child: Text(
                              'Author memperbarui Nama buku.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          top: 24,
                          child: SizedBox(
                            width: 225,
                            height: 16,
                            child: Text(
                              '... jam yang lalu',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey, // Mengubah warna teks menjadi abu-abu
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20), // Menambahkan jarak yang lebih besar antara container dan teks
                        Align(
                          alignment: Alignment.centerRight, // Memposisikan teks di pojok kanan
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: DecorationImage(
                                    image: AssetImage('images/novel_1.jpg'), // Ganti dengan path gambar novel yang sesuai
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ), 
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider( // Menambahkan garis hitam
                    color: Colors.black,
                    thickness: 1, // Ketebalan garis
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
