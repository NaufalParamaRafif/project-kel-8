import 'package:flutter/material.dart';
import 'package:project_kelompok_8/models/penjual_models.dart';

class DetailPenjualPage extends StatefulWidget {
  DetailPenjualPage({super.key, required this.usernamePenjual});
  final String usernamePenjual;

  @override
  State<DetailPenjualPage> createState() => _DetailPenjualPageState();
}

class _DetailPenjualPageState extends State<DetailPenjualPage>{

  @override
  Widget build(BuildContext context) {
    Penjual penjual = Penjual.getPenjualByUsername(widget.usernamePenjual);
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
                  image: NetworkImage(penjual.image),
                )
              )
            ),
            title: Text(penjual.name, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23),),
            subtitle: Text(penjual.keteranganSingkat),
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