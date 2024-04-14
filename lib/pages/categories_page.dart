import 'package:flutter/material.dart';
import './../models/categories_models.dart';

class CategoriesPage extends StatelessWidget {
  CategoriesPage({super.key});
  final listCategory = Categories().listCategory;

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
      body: ListView.builder(
        padding: EdgeInsets.all(5),
        itemCount: listCategory.length,
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
                  child: Image.network(listCategory[index]['image'].toString()),
                ),
                title: Text(listCategory[index]['title'].toString()),
                subtitle: Text(listCategory[index]['subtitle'].toString()),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
            ),
          );
        }
      ),
    );
  }
}