import 'package:flutter/material.dart';
import 'package:project_kelompok_8/providers/all_category.dart';
import 'package:provider/provider.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  final categoryProvider = Provider.of<AllCategory>(context);
  var allCategoryProvider = categoryProvider.allCategory;
  if (allCategoryProvider.isEmpty){
    categoryProvider.getAllCategoryFromSupabase();
  }

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF33691E),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
        title: Text("Categories Page"),
      ),
      body: RefreshIndicator(
        onRefresh: () => categoryProvider.getAllCategoryFromSupabase(),
        child: (allCategoryProvider.isEmpty) ?
        Center(child: CircularProgressIndicator(),)
        :
        ListView.builder(
          padding: EdgeInsets.all(5),
          itemCount: allCategoryProvider.length,
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
                          allCategoryProvider[index].image.toString(),
                          height: sizeConstraint.maxHeight,
                          width: sizeConstraint.maxHeight,
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                  title: Text(allCategoryProvider[index].title.toString(),),
                  subtitle: Text(allCategoryProvider[index].subtitle.toString(),),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}