import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:project_kelompok_8/models/penjual_models.dart';
import 'package:project_kelompok_8/pages/post_page.dart';

import './../models/jasa_models.dart';

class DefaultJasaCard extends StatelessWidget {
  DefaultJasaCard({required this.id, required this.image, required this.title, required this.harga});
  String id;
  String image;
  String harga;
  String title;

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
            Navigator.push(context, MaterialPageRoute(builder: (context) => PostPage(id: id)));
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
                    child: LayoutBuilder(
                      builder: (context, size) {
                        return Image.network(
                          image,
                          width: size.maxWidth,
                          height: size.maxWidth,
                          fit: BoxFit.cover,
                        );
                      }
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12), overflow: TextOverflow.ellipsis, maxLines: 3, textAlign: TextAlign.start,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("from ", style: TextStyle(color: Colors.black54, fontSize: 13),),
                          Text(harga, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
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