import 'package:flutter/material.dart';
import 'package:project_kelompok_8/components/my_card.dart';

class WhiteListPage extends StatefulWidget {
  const WhiteListPage({super.key});

  @override
  State<WhiteListPage> createState() => _WhiteListPageState();
}

class _WhiteListPageState extends State<WhiteListPage> {
  final List<Map<String, String>> jasaDefault = [
    {
      'thumbnail' : "images/fotoorg.jpg",
      'judul' : "Jasa Pembuatan Web Menggunakan MERN Stack, dan Flutter sebagai Aplikasi untuk END USERS",
      'harga' : "25.999",
      'gambarProfilePenjual' : 'images/kodok.jpg',
      'namaPenjual' : "Osama bin Laden",
      'deskripsiDetailJasa' : 'Adalah sebuah jasa yang menawarkan Omaga ges, mantap sekali wajib dicoba'
    },
    {
      'thumbnail' : "images/fotoorg.jpg",
      'judul' : "Jasa Pembuatan Web Menggunakan MERN Stack, dan Flutter sebagai Aplikasi untuk END USERS",
      'harga' : "25.999",
      'gambarProfilePenjual' : 'images/kodok.jpg',
      'namaPenjual' : "Osama bin Laden",
      'deskripsiDetailJasa' : 'Adalah sebuah jasa yang menawarkan Omaga ges, mantap sekali wajib dicoba'
    },
    {
      'thumbnail' : "images/fotoorg.jpg",
      'judul' : "Jasa Pembuatan Web Menggunakan MERN Stack, dan Flutter sebagai Aplikasi untuk END USERS",
      'harga' : "25.999",
      'gambarProfilePenjual' : 'images/kodok.jpg',
      'namaPenjual' : "Osama bin Laden",
      'deskripsiDetailJasa' : 'Adalah sebuah jasa yang menawarkan Omaga ges, mantap sekali wajib dicoba'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF33691E),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
        title: Text("Whitelist"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround ,
            children: [
              DefaultJasaCard(thumbnail: jasaDefault[0]['thumbnail'].toString(), judul: jasaDefault[0]['judul'].toString(), harga: jasaDefault[0]['harga'].toString(), gambarProfilePenjual: jasaDefault[0]['gambarProfilePenjual'].toString(), namaPenjual: jasaDefault[0]['namaPenjual'].toString(), deskripsiDetailJasa: jasaDefault[0]['deskripsiDetailJasa'].toString()),
              DefaultJasaCard(thumbnail: jasaDefault[1]['thumbnail'].toString(), judul: jasaDefault[1]['judul'].toString(), harga: jasaDefault[1]['harga'].toString(), gambarProfilePenjual: jasaDefault[1]['gambarProfilePenjual'].toString(), namaPenjual: jasaDefault[1]['namaPenjual'].toString(), deskripsiDetailJasa: jasaDefault[1]['deskripsiDetailJasa'].toString())
            ],
          )
        ],
      ),
    );
  }
}