import 'package:flutter/material.dart';

class SeluruhKategoriPage extends StatelessWidget {
  const SeluruhKategoriPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 55, 130, 94),
        leading: IconButton.filled(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.white),
          ),
          onPressed: () {},
          color: Colors.black,
          icon: Icon(Icons.arrow_back_rounded),
        ),
        title: Text(
          'Seluruh Kategori',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Expanded(
        child: Container(
          color: Colors.white,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                height: 8,
              ),
              ListTile(
                leading: Icon(Icons.car_crash),
                onTap: () {},
                title: Text('Mobil'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.car_crash),
                onTap: () {},
                title: Text('Mobil'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
