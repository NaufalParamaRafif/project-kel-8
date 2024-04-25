import 'package:flutter/material.dart';

class RecommendedJasaCard extends StatefulWidget {
  const RecommendedJasaCard({super.key});

  @override
  State<RecommendedJasaCard> createState() => _RecommendedJasaCardState();
}

class _RecommendedJasaCardState extends State<RecommendedJasaCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 315,
      width: 280,
      child: Card(
        elevation: 5,
        surfaceTintColor: Colors.transparent,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
              ),
              child: Image.network(
                'https://picsum.photos/564',
                width: 280,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipOval(
                        child: CircleAvatar(
                          child: Image(
                            image: NetworkImage('https://picsum.photos/69'),
                            alignment: Alignment.center,
                            height: double.infinity,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text("Abiyaza Rafif Khayla Meiza", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),),
                    ],
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined)),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Jasa membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat membuat ", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14), overflow: TextOverflow.ellipsis, maxLines: 3,),
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
            ),
          ],
        ),
      ),
    );
  }
}