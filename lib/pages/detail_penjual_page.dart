import 'package:flutter/material.dart';
import 'package:project_kelompok_8/providers/all_penjual.dart';
import 'package:provider/provider.dart';

class DetailPenjualPage extends StatelessWidget {
  DetailPenjualPage({required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    final penjualProvider = Provider.of<AllPenjual>(context);
    final currentPenjualProvider = penjualProvider.getPenjualByIdFromLocal(id);
    if(currentPenjualProvider == null){
      penjualProvider.getPenjualByIdFromSupabase(id);
    }
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF33691E),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
        title: Text("Detail Penjual"),
      ),
      body: RefreshIndicator(
        child: 
        (currentPenjualProvider == null) ?
        Center(child: CircularProgressIndicator(),) : 
        ListView(
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
                  image: NetworkImage(currentPenjualProvider.image),
                )
              )
            ),
            title: Text(currentPenjualProvider.name, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23),),
            subtitle: Text(currentPenjualProvider.keteranganSingkat),
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
      onRefresh: () => penjualProvider.getPenjualByIdFromSupabase(id),)
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