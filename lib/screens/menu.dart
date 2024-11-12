import 'package:flutter/material.dart';
import 'package:zerone/widgets/left_drawer.dart';
import 'package:zerone/widgets/product_card.dart';

class MyHomePage extends StatelessWidget {
    final String npm = '2306165780'; // NPM
    final String name = 'Cindy Octavia'; // Nama
    final String className = 'PBP B'; // Kelas

    final List<ItemHomepage> items = [
         ItemHomepage("Lihat Product", Icons.shopping_bag_sharp),
         ItemHomepage("Tambah Product", Icons.add),
         ItemHomepage("Logout", Icons.logout),
        ];

    MyHomePage({super.key});

    
    @override
    Widget build(BuildContext context) {
      // Scaffold menyediakan struktur dasar halaman dengan AppBar dan body.
      return Scaffold(
        // AppBar adalah bagian atas halaman yang menampilkan judul.
        appBar: AppBar(
          // Judul aplikasi "Mental Health Tracker" dengan teks putih dan tebal.
          title: const Text(
            'ZERONE',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          iconTheme: const IconThemeData(
          color: Colors.black, // Ganti dengan warna yang diinginkan
        ),
          // Warna latar belakang AppBar diambil dari skema warna tema aplikasi.
          backgroundColor: Theme.of(context).colorScheme.primary,
          
        ),
        drawer: const LeftDrawer(),
        // Body halaman dengan paddiafng di sekelilingnya.
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          // Menyusun widget secara vertikal dalam sebuah kolom.
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Row untuk menampilkan 3 InfoCard secara horizontal.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InfoCard(title: 'NPM', content: npm),
                  InfoCard(title: 'Name', content: name),
                  InfoCard(title: 'Class', content: className),
                ],
              ),

              // Memberikan jarak vertikal 16 unit.
              const SizedBox(height: 16.0),

              // Menempatkan widget berikutnya di tengah halaman.
              Center(
                child: Column(
                  // Menyusun teks dan grid item secara vertikal.

                  children: [
                    // Menampilkan teks sambutan dengan gaya tebal dan ukuran 18.
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Text(
                        'Welcome to ZERONE',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ),

                    // Grid untuk menampilkan ItemCard dalam bentuk grid 3 kolom.
                    GridView.count(
                      primary: true,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 3,
                      // Agar grid menyesuaikan tinggi kontennya.
                      shrinkWrap: true,

                      // Menampilkan ItemCard untuk setiap item dalam list items.
                      children: items.map((ItemHomepage item) {
                        return ItemCard(item);
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

