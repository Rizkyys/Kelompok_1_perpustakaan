import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
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
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Novel",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "This is Your Collection",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10.0),
            GestureDetector(
              onTap: () {
                // Tambahkan fungsi untuk menambahkan item baru
              },
              child: Row(
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    "Add New Book",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Jumlah item buku yang ingin ditampilkan
                itemBuilder: (context, index) {
                  return buildBookItem();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget untuk menampilkan item buku
  Widget buildBookItem() {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            height: 150,
            child: Image.asset(
              'images/novel_1.jpg', // Ganti dengan gambar Anda
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 20.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Title: angkasa 50",
                  style: TextStyle(
                    color: Color(0xFF6B2E2E),
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Author: Cahaya Dewi",
                  style: TextStyle(
                    color: Color(0xFF6B2E2E),
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Category: Fiksi",
                  style: TextStyle(
                    color: Color(0xFF6B2E2E),
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Published: 2022-05-03",
                  style: TextStyle(
                    color: Color(0xFF6B2E2E),
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Tambahkan fungsi untuk menghapus
                      },
                      child: Text("Delete"),
                    ),
                    SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        // Tambahkan fungsi untuk mengedit
                      },
                      child: Text("Edit"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
