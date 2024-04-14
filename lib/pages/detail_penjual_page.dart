import 'package:flutter/material.dart';
import 'package:project_kelompok_8/pages/home_page.dart';

class DetailPenjualPage extends StatefulWidget {
  const DetailPenjualPage({super.key});

  @override
  State<DetailPenjualPage> createState() => _DetailPenjualPageState();
}

class _DetailPenjualPageState extends State<DetailPenjualPage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF33691E),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
        title: Text("Detail Penjual"),
      ),
      body: ListView(
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            tileColor: Color.fromARGB(25, 47, 165, 0),
            leading: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black54, width: 2),
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/fotoorg.jpg')
                )
              )
            ),
            title: Text('Naufal Parama Rafif', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23),),
            subtitle: Text('Berpengalaman selama 6 tahun fdhsjlkafhjdjkdshg sdjkfhdis cshfdjk df sjkafds jkcn vjkgds njdsnbjkfsd vcsjklhafljkd'),
            trailing: IconButton(onPressed: (){
              showModalBottomSheet(
                enableDrag: true,
                showDragHandle: true,
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.vertical(top: Radius.circular(32))),
                context: context,
                builder: (BuildContext context) => DeskripsiPenjual());
            }, icon: Icon(Icons.keyboard_arrow_right),)
          ),
        ],
      ),
    );
  }
}

class DeskripsiPenjual extends StatelessWidget {
  const DeskripsiPenjual({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.transparent,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          children: [
            Text("Detail Penjual", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}