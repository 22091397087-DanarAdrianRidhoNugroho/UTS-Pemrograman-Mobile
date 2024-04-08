// last.dart
import 'package:flutter/material.dart'; // import file material.dart

// Kelas ThankYouPage adalah StatelessWidget yang menampilkan halaman terima kasih
class ThankYouPage extends StatelessWidget {
  final int score; // Variabel untuk menyimpan skor

  ThankYouPage({required this.score});

  @override
  Widget build(BuildContext context) {
    int finalScore = score * 10; // Mengalikan score dengan 10 untuk mendapatkan skor akhir
    print('Nilai score: $score'); // Menampilkan score dalam console
    print('Nilai finalScore: $finalScore'); // Menampilkan skor akhir dalam console

    return Scaffold(
      appBar: AppBar(
        title: Text('Thank You'),
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xDD0024F1), Color.fromRGBO(1, 1, 61, 0.818)],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.thumb_up_alt, // Ikoni jempol ke atas
                size: 100,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              SizedBox(height: 20),
              Text(
                'Terima Kasih Telah Mengikuti Kuis!', // Pesan terima kasih
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'Score Betul: $score / 10', // Menampilkan score betul
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
              ),
              Text(
                'Skor Akhir: $finalScore', // Menampilkan skor akhir (score * 10)
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: Text('Kembali'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
