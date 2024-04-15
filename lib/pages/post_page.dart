import 'package:flutter/material.dart';
import 'package:project_kelompok_8/models/penjual_models.dart';
import 'package:project_kelompok_8/pages/detail_penjual_page.dart';

import './../models/jasa_models.dart';

class PostPage extends StatelessWidget {
  static String nameRoute = '/post/page';
  PostPage({super.key, required this.jasa});
  final Jasa jasa;

  @override
  //tesfsdzfdfhhfd
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 55, 130, 94),
          title: Text('Detail Jasa', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
          centerTitle: true,
          leading: IconButton.filled(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black,
            icon: Icon(Icons.arrow_back_rounded),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.comment,
            color: Colors.white,
          ),
          tooltip: "Chat Penjual Jasa",
          backgroundColor: Color.fromARGB(255, 55, 130, 94),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                jasa.image,
                width: MediaQuery.of(context).size.width,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          jasa.title,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                          size: 28,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (contex) =>
                      DetailPenjualPage(usernamePenjual: jasa.usernamePenjual),
                    )),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipOval(
                          child: CircleAvatar(
                            child: Image(
                              image: NetworkImage(Penjual.getPenjualByUsername(jasa.usernamePenjual).image),
                              alignment: Alignment.center,
                              height: double.infinity,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          Penjual.getPenjualByUsername(jasa.usernamePenjual).name,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Table(
                    children: [
                      TableRow(
                        children: [
                          TableCell(child: 
                            Text("Kategori"),
                          ),
                          TableCell(child: 
                            Text("Begadang"),
                          ),
                        ]
                      ),
                      TableRow(
                        children: [
                          TableCell(child: 
                            Text("Harga"),
                          ),
                          TableCell(child: 
                            Text(jasa.harga),
                          ),
                        ]
                      ),
                      TableRow(
                        children: [
                          TableCell(child: 
                            Text("Perkiraan Waktu Pengerjaan"),
                          ),
                          TableCell(child: 
                            Text(jasa.perkiraanWaktuPengerjaan),
                          ),
                        ]
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text(
                    jasa.deskripsiDetail,
                    style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.justify,
                  ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
