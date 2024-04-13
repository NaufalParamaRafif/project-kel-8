import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  static String nameRoute = '/post/page';
  const PostPage({super.key, required this.thumbnail, required this.judul, required this.harga, required this.gambarProfilePenjual, required this.namaPenjual, required this.deskripsiDetailJasa});
  final String thumbnail;
  final String judul;
  final String harga;
  final String gambarProfilePenjual;
  final String namaPenjual;
  final String deskripsiDetailJasa;

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
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: 100),
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.comment,
              color: Colors.white,
            ),
            backgroundColor: Color.fromARGB(255, 55, 130, 94),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                thumbnail,
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
                          judul,
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
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipOval(
                        child: CircleAvatar(
                          child: Image(
                            image: AssetImage(gambarProfilePenjual),
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
                        namaPenjual,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
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
                            Text("Begadang"),
                          ),
                        ]
                      ),
                      TableRow(
                        children: [
                          TableCell(child: 
                            Text("Perkiraan Waktu Pengerjaan"),
                          ),
                          TableCell(child: 
                            Text("1 Minggu"),
                          ),
                        ]
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text(
                    deskripsiDetailJasa,
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
