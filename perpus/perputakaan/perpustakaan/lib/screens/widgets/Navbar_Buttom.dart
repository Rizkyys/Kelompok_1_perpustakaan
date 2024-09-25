import 'package:flutter/material.dart';
import 'package:perpustakaan/screens/edit.dart';
import 'package:perpustakaan/screens/homepage.dart';
import 'package:perpustakaan/screens/search.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 15,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            size: 15,
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.edit,
            size: 15,
          ),
          label: 'Edit',
        ),
      ],
      currentIndex: 0, // Tentukan indeks yang dipilih
      onTap: (index) {
        // Tambahkan logika untuk penanganan ketika item dipilih
        print('Item with index $index tapped');

        // Navigasi ke halaman yang sesuai berdasarkan indeks item yang dipilih
        switch (index) {
          case 0:
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
            break;
          case 1:
            Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage()));
            break;
          case 2:
            Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));
            break;
          default:
            break;
        }
      },
    );
  }
}
