import 'package:flutter/material.dart';
import 'package:project_kelompok_8/models/category_models.dart';
import '../supabase/supabasesss.dart';

class AllCategory with ChangeNotifier{
  List<CategoryModel> allCategory = [];
  
  AllCategory(){
    getAllCategoryFromSupabase();
  }
  
  Future<void> getAllCategoryFromSupabase () async {
    var allCategoryFromSupabase = await supabase.from('category').select('*');
    for (var eachCategory in allCategoryFromSupabase) {
      allCategory.add(
        CategoryModel(
          id: eachCategory['id'],
          image: eachCategory['image'],
          title: eachCategory['title'],
          subtitle: eachCategory['subtitle'],
        ),
      );
    }
    notifyListeners();
  }
}