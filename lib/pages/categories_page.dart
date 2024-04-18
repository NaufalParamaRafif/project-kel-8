import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './../models/categories_models.dart';

class CategoriesPage extends StatefulWidget {
  CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF33691E),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
        title: Text("Categories Page"),
      ),
      body: 
      FutureBuilder(
        future: Categories().allCategory,
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.connectionState == ConnectionState.done){
            return ListView.builder(
              padding: EdgeInsets.all(5),
              itemCount: 1,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3,
                  surfaceTintColor: Colors.transparent,
                  child: InkWell(
                    onTap: (){
                      print("halo Gaes");
                    },
                    child: ListTile(
                      leading: Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: LayoutBuilder(
                          builder: (context, sizeConstraint) {
                            return Image.network(
                              snapshot.data![index]['image'].toString(),
                              height: sizeConstraint.maxHeight,
                              width: sizeConstraint.maxHeight,
                              fit: BoxFit.cover,
                            );
                          },
                        ),
                      ),
                      title: Text(snapshot.data![index]['title'].toString()),
                      subtitle: Text(snapshot.data![index]['subtitle'].toString()),
                      trailing: const Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                );
              }
            );
          }
          throw{
            Text("ERROR")
          };
        },
      ),
    );
  }
}