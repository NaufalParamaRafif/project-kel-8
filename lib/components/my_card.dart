import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:project_kelompok_8/pages/post_page.dart';

class DefaultJasaCard extends StatefulWidget {
  const DefaultJasaCard({super.key, required this.thumbnail, required this.judul, required this.harga, required this.gambarProfilePenjual, required this.namaPenjual, required this.deskripsiDetailJasa});
  final String thumbnail;
  final String judul;
  final String harga;
  final String gambarProfilePenjual;
  final String namaPenjual;
  final String deskripsiDetailJasa;

  @override
  State<DefaultJasaCard> createState() => Default_JasaCardState();
}

class Default_JasaCardState extends State<DefaultJasaCard> {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   String thumbnaild = widget.thumbnail;
  // }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 160,
      child: Card(
        elevation: 5,
        surfaceTintColor: Colors.transparent,
        color: Colors.white,
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => PostPage(thumbnail: widget.thumbnail, judul: widget.judul, harga: widget.harga, gambarProfilePenjual: widget.gambarProfilePenjual, namaPenjual: widget.namaPenjual, deskripsiDetailJasa: widget.deskripsiDetailJasa)));
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                badges.Badge(
                  badgeContent: Icon(Icons.favorite, color: Colors.red, size: 25, ),
                  badgeStyle: badges.BadgeStyle(
                    badgeColor: Colors.transparent,
                  ),
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(8) // Adjust the radius as needed
                    ),
                    child: Image.asset(
                      widget.thumbnail,
                      width: 125,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.judul, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12), overflow: TextOverflow.ellipsis, maxLines: 3,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("from ", style: TextStyle(color: Colors.black54, fontSize: 13),),
                          Text(widget.harga, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                        ],
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