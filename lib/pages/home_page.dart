import 'package:flutter/material.dart';
import 'package:project_kelompok_8/providers/all_jasa.dart';
import 'package:provider/provider.dart';
import './../components/my_recommended_card.dart';
import '../components/my_card.dart';
import './notifications_page.dart';

class HomePage extends StatefulWidget {
  static String nameRoute = '/homepage';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final jasaProvider = Provider.of<AllJasa>(context);
    final allJasaProvider = jasaProvider.allJasa;
    if(allJasaProvider.isEmpty){
      jasaProvider.getAllJasaFromSupabase();
    }
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.green,
          ),
        ),
        title: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  color: Colors.white, 
                ),
                child: TextField(
                  controller: _searchController,
                  style: const TextStyle(color: Colors.black),
                  cursorColor: Colors.black,
                  decoration: const InputDecoration(
                    hintText: 'Search...',
                    icon: Icon(Icons.search),
                    iconColor: Colors.grey,
                    hintStyle: TextStyle(color: Color.fromARGB(137, 44, 44, 44)),
                    border: InputBorder.none,
                  ),
                  onChanged: (value) {
                  },
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {
              Navigator.pushNamed(context, NotificationsPage.nameRoute);
            }, 
            icon: Icon(Icons.notifications, color: Colors.white,),
          ),
          SizedBox(width: 20,),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Telusuri Katagori",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Text(
                "Lihat semua",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Image.network("https://picsum.photos/200",),
                    ),
                    Text(
                      "Mobil",
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 5),
              Flexible(
                child: Column(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Image.network("https://picsum.photos/200",),
                    ),
                    Text(
                      "Motor",
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 5),
              Flexible(
                child: Column(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Image.network("https://picsum.photos/200",),
                    ),
                    Text(
                      "Property",
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 5),
              Flexible(
                child: Column(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Image.network("https://picsum.photos/201",),
                    ),
                    Text(
                      "Elektronik",
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rekomendasi terdekat",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: 10),
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width: 10),
                    RecommendedJasaCard(),
                    SizedBox(width: 10),
                    RecommendedJasaCard(),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Rekomendasi barang terbaru",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              (allJasaProvider.isEmpty) ? 
              Center(
                child: CircularProgressIndicator(),
              ) :
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: allJasaProvider.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 6/9,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemBuilder: (context, index) {
                  return DefaultJasaCard(
                    id: allJasaProvider[index].id,
                    idPenjual: allJasaProvider[index].idPenjual.toString(),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}