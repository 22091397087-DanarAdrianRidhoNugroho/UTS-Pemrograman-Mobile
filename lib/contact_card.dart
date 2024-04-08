// contact_card.dart
import 'package:flutter/material.dart'; //import file material.dart

// Kelas ContactCard adalah widget untuk menampilkan kartu kontak
class ContactCard extends StatelessWidget {
  // Deklarasi variabel untuk menyimpan data kontak
  final String Name;
  final String PhoneNumber;
  final String Email;
  final String Jabatan;
  final String NIM;
  final String Alamat;
  final String imageUrl;

  // Konstruktor untuk menginisialisasi variabel
  ContactCard({
    required this.Name,
    required this.PhoneNumber,
    required this.Email,
    required this.Jabatan,
    required this.NIM,
    required this.Alamat,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 350,
      child: GestureDetector(
        onTap: () {
          // Menampilkan dialog dengan detail profil kontak saat kartu kontak ditekan
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Detail Profil'), // Judul dialog
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Menampilkan foto profil kontak dalam bentuk CircleAvatar
                    Center(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(imageUrl),
                      ),
                    ),
                    SizedBox(height: 10), 
                    // Menampilkan data kontak
                    Text('Nama: $Name'), 
                    Text('Nomor Telepon: $PhoneNumber'), 
                    Text('Email: $Email'), 
                    Text('NIM: $NIM'),
                    Text('Alamat: $Alamat'), 
                  ],
                ),
                actions: <Widget>[
                  // Tombol untuk menutup dialog
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Menutup dialog
                    },
                    child: Text('Tutup'), // Teks pada tombol
                  ),
                ],
              );
            },
          );
        },
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                // Menampilkan foto profil kontak dalam bentuk CircleAvatar
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(imageUrl),
                ),
                SizedBox(height: 10), 
                Text(
                  Name, // Menampilkan nama kontak
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5), 
                Text(
                  Jabatan, // Menampilkan jabatan kontak
                  style: TextStyle(
                    fontSize: 14,
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

