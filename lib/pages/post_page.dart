import 'package:flutter/material.dart';
import 'package:project_kelompok_8/models/penjual_models.dart';
import 'package:project_kelompok_8/pages/detail_penjual_page.dart';

import './../models/jasa_models.dart';

class PostPage extends StatelessWidget {
  static String nameRoute = '/post/page';
  PostPage({super.key, required this.id});
  int id;
  var jasaDetail = Jasa();

  @override
  //tesfsdzfdfhhfd
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 55, 130, 94),
        title: Text(
          'Detail Jasa',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
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
      body: FutureBuilder(
        future: jasaDetail.getJasaById(id),
        builder: (context, jasaDetailSupabase) {
          if (jasaDetailSupabase.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (jasaDetailSupabase.connectionState == ConnectionState.done) {
            if (jasaDetailSupabase.hasData) {
              return ListView(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      jasaDetailSupabase.data!['image'].toString(),
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
                                jasaDetailSupabase.data!['title'],
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border,
                                color: Colors.black,
                                size: 28,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FutureBuilder(
                          future: Penjual().getPenjualById(jasaDetailSupabase.data!['penjual_id'].toString()),
                          builder: (context, penjualDetail) {
                            if(penjualDetail.connectionState == ConnectionState.waiting){
                              return Center(child: CircularProgressIndicator());
                            }
                            if(penjualDetail.connectionState == ConnectionState.done){
                              return
                              InkWell(
                                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (contex) =>
                                  DetailPenjualPage(id: penjualDetail.data!['id']),
                                )),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ClipOval(
                                      child: CircleAvatar(
                                        child: Image(
                                          image: NetworkImage(penjualDetail.data!['image'],),
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
                                      penjualDetail.data!['name'].toString(),
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }
                            throw{print("error")};
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Table(
                          children: [
                            TableRow(children: [
                              TableCell(
                                child: Text("Kategori"),
                              ),
                              TableCell(
                                child: Text("Begadang"),
                              ),
                            ]),
                            TableRow(children: [
                              TableCell(
                                child: Text("Harga"),
                              ),
                              TableCell(
                                child: Text(
                                  jasaDetailSupabase.data!['harga'].toString(),
                                ),
                              ),
                            ]),
                            TableRow(children: [
                              TableCell(
                                child: Text("Perkiraan Waktu Pengerjaan"),
                              ),
                              TableCell(
                                child: Text(
                                  jasaDetailSupabase.data!['perkiraan_waktu_pengerjaan'],
                                ),
                              ),
                            ]),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          jasaDetailSupabase.data!['deskripsi_detail'],
                          style: TextStyle(fontSize: 17),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            } else {
              return Text("Tidak Tersedia");
            }
          }
          throw {Text("error")};
        },
      ),
    );
  }
}
