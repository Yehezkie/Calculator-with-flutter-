import 'package:flutter/material.dart'; // Import pustaka Flutter untuk pengembangan aplikasi.
import 'package:klinik_app/ui/poli_form.dart';
import '../model/poli.dart';
import 'poli_detail.dart';
import 'poli_item.dart';

class PoliPage extends StatefulWidget {
  const PoliPage(
      {super.key}); // Kode: Membuat kelas PoliPage yang merupakan StatefulWidget yang mewarisi sifat dari StatefulWidget.

  @override
  State<PoliPage> createState() =>
      _PoliPageState(); // Kode: Membuat objek _PoliPageState yang akan digunakan sebagai state untuk PoliPage.
}

class _PoliPageState extends State<PoliPage> {
  // Kode: Membuat kelas _PoliPageState, yang merupakan state dari PoliPage.
  @override
  Widget build(BuildContext context) {
    // Kode: Fungsi build, digunakan untuk membangun antarmuka pengguna PoliPage.
    return Scaffold(
      // Kode: Menggunakan widget Scaffold sebagai kerangka utama halaman.
      appBar: AppBar(
        title: const Text("Data Poli"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PoliForm()));
            },
          )
        ],
      ), // Kode: Membuat AppBar dengan judul "Data Poli".
      body: ListView(
        // Kode: Membungkus daftar elemen dalam widget ListView untuk mengelompokkan dan menggulir daftar jika diperlukan.
        children: [
          PoliItem(poli: Poli(namaPoli: "Poli Anak")),
          PoliItem(poli: Poli(namaPoli: "Poli Kandungan")),
          PoliItem(poli: Poli(namaPoli: "Poli Gigi")),
          PoliItem(poli: Poli(namaPoli: "Poli THT")),
        ],
      ),
    );
  }
}
