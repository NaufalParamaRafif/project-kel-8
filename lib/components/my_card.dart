import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class DefaultJasaCard extends StatefulWidget {
  const DefaultJasaCard({super.key});

  @override
  State<DefaultJasaCard> createState() => Default_JasaCardState();
}

class Default_JasaCardState extends State<DefaultJasaCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 160,
      child: Card(
        elevation: 5,
        surfaceTintColor: Colors.transparent,
        color: Colors.white,
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
                    'images/fotoorg.jpg',
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
                    Text("Jasa freelancer membuat web menggunakan flutter", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12), overflow: TextOverflow.ellipsis, maxLines: 3,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("from ", style: TextStyle(color: Colors.black54, fontSize: 13),),
                        Text("25.000", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}