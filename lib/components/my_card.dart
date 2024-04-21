import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:project_kelompok_8/pages/detail_penjual_page.dart';
import 'package:project_kelompok_8/pages/post_page.dart';
import 'package:project_kelompok_8/providers/all_jasa.dart';
import 'package:provider/provider.dart';

class DefaultJasaCard extends StatelessWidget {
  DefaultJasaCard({required this.id, required this.idPenjual});
  final String id;
  final String idPenjual;

  @override
  Widget build(BuildContext context) {
    final jasaProvider = Provider.of<AllJasa>(context);
    final currentjasaProvider = jasaProvider.getPenjualByIdFromLocal(id);
    if(currentjasaProvider == null){
      jasaProvider.getJasaByIdFromSupabase(id);
    }
    return Container(
      height: 240,
      width: 160,
      child: Card(
        elevation: 5,
        surfaceTintColor: Colors.transparent,
        color: Colors.white,
        child: 
        (currentjasaProvider == null) ?
        Center(child: CircleAvatar(),) :
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => PostPage(jasaModel: currentjasaProvider, idPenjual: idPenjual,)));
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
                          currentjasaProvider.image,
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
                      Text(currentjasaProvider.title, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12), overflow: TextOverflow.ellipsis, maxLines: 3, textAlign: TextAlign.start,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("from ", style: TextStyle(color: Colors.black54, fontSize: 13),),
                          Text(currentjasaProvider.harga.toString(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
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