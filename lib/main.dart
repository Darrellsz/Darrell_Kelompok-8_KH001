import 'package:flutter/material.dart';
import 'kartu_mahasiswa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: const Center(
          child: KartuMahasiswa(
            nama: 'Darrell Putra Prayata',
            nim: '20250801150',
            programStudi: 'Teknik Informatika', // Sesuaikan jika prodi kamu berbeda
          ),
        ),
      ),
    );
  }
}