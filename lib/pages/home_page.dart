import 'dart:math';

import 'package:flutter/material.dart';
import './../components/my_recommended_card.dart';
import '../components/my_card.dart';
import './notifications_page.dart';

class HomePage extends StatefulWidget {
  static String nameRoute = '/homepage';
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
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
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.green,
          ),
        ),
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            color: Colors.white, 
          ),
          width: 350,
          child: TextField(
            controller: _searchController,
            style: const TextStyle(color: Colors.black),
            cursorColor: Colors.black,
            decoration: const InputDecoration(
              hintText: 'Search...',
              icon: Icon(Icons.search),
              iconColor: Colors.grey,
              hintStyle: TextStyle(color: Color.fromARGB(137, 44, 44, 44)),
              border: InputBorder.none,
            ),
            onChanged: (value) {
            },
          ),
        ),
        actions: [
          IconButton(onPressed: () {
              Navigator.pushNamed(context, NotificationsPage.nameRoute);
            }, 
            icon: Icon(Icons.notifications, color: Colors.white,),
          ),
          SizedBox(width: 20,),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Telusuri Katagori",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Text(
                "Lihat semua",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "Mobil",
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 5),
              Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "Motor",
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 5),
              Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "Property",
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 5),
              Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "Elektronik",
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rekomendasi terdekat",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: 10),
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width: 10),
                    RecommendedJasaCard(),
                    SizedBox(width: 10),
                    RecommendedJasaCard(),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Rekomendasi barang terbaru",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              ...getDefaultJasaCard(jasaDefault),
            ],
          ),
        ],
      ),
    );
  }
}

List<Widget> getDefaultJasaCard(List jasaDefault) {
  int rowCount = (jasaDefault.length / 2).ceil();

  List<Widget> allJasaDefaultWidget = [];

  // Iterate over each row
  for (int rowIndex = 0; rowIndex < rowCount; rowIndex++) {
    List<Widget> rowWidgets = [];

    int start = rowIndex * 2;
    int end = min(start + 2, jasaDefault.length);

    for (int index = start; index < end; index++) {
      rowWidgets.add(DefaultJasaCard(
        thumbnail: jasaDefault[index]['thumbnail'],
        judul: jasaDefault[index]['judul'],
        harga: jasaDefault[index]['harga'],
        gambarProfilePenjual: jasaDefault[index]['gambarProfilePenjual'],
        namaPenjual: jasaDefault[index]['namaPenjual'],
        deskripsiDetailJasa: jasaDefault[index]['deskripsiDetailJasa'],
      ));
    }

    if (rowWidgets.length == 1) {
      rowWidgets.add(
        Container(
          height: 240,
          width: 160,
          color: Colors.transparent,
        )
      );
    }

    allJasaDefaultWidget.add(Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: rowWidgets,
    ));

    allJasaDefaultWidget.add(SizedBox(height: 20));
  }

  return allJasaDefaultWidget;
}
