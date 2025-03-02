import 'package:flutter/material.dart'; // Mengimpor pustaka Flutter untuk membangun UI

void main() {
  runApp(MyApp()); // Memulai aplikasi dengan menjalankan widget MyApp
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white, // Mengatur warna latar belakang aplikasi
        appBar: AppBar(
          backgroundColor: Colors.green, // Warna latar belakang AppBar
          title: Text(
            'I am Groot', // Judul di AppBar
            style: TextStyle(
              color: Colors.white, // Warna teks putih
              fontFamily: 'Georgia', // Menggunakan font Georgia
            ),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, // Memusatkan elemen secara horizontal
              children: <Widget>[
                // Widget untuk menampilkan gambar dalam bentuk lingkaran
                Container(
                  height: 300, // Tinggi container
                  width: 300, // Lebar container
                  margin: EdgeInsets.only(top: 100), // Jarak dari atas
                  decoration: BoxDecoration(
                    color: Colors.lightGreen, // Warna latar belakang hijau terang
                    shape: BoxShape.circle, // Bentuk container menjadi lingkaran
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/groot.png', // Menampilkan gambar dari folder assets
                      fit: BoxFit.cover, // Menyesuaikan gambar agar penuh dalam lingkaran
                    ),
                  ),
                ),

                // Jarak antara gambar dan teks
                SizedBox(height: 20),

                // Widget untuk menampilkan kutipan Groot dalam container
                Container(
                  padding: EdgeInsets.all(16), // Padding dalam container
                  height: 190, // Tinggi container
                  width: 350, // Lebar container
                  decoration: BoxDecoration(
                    color: Colors.lightGreen, // Warna latar belakang hijau terang
                    borderRadius: BorderRadius.circular(30), // Membuat sudut container melengkung
                  ),
                  alignment: Alignment.center, // Memusatkan isi di dalam container
                  child: Column(
                    children: [
                      // Mengatur gaya teks secara default untuk semua teks di dalamnya
                      DefaultTextStyle(
                        style: TextStyle(
                          fontFamily: 'Georgia',
                          fontStyle: FontStyle.italic,
                          fontSize: 17,
                          color: Color(0xFF003A00), // Warna hijau tua
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start, // Menyusun teks dari kiri
                          children: [
                            Text("I am Groot, I am Groot, I am Groot"),
                            SizedBox(height: 5), // Jarak antar teks
                            Text("I am Groot... I am Groot!"),
                            SizedBox(height: 5),
                            Text("I am Groot? I am Groot."),
                            SizedBox(height: 5),
                            Text("I am Groot, I am Groot—I am Groot;"),
                            SizedBox(height: 5),
                            Text("I am Groot... I am Groot..."),
                          ],
                        ),
                      ),

                      Spacer(), // Mendorong teks di bawah ke posisi terbawah

                      // Teks tanda kutipan di bagian kanan bawah
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          '- Groot - ',
                          style: TextStyle(
                            fontFamily: 'Georgia', // Menggunakan font Georgia
                            fontSize: 16, // Ukuran teks lebih kecil
                            color: Color(0xFF003A00), // Warna hijau tua
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
