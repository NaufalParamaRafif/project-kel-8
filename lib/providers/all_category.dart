import 'package:flutter/material.dart';
import 'package:project_kelompok_8/models/category_models.dart';
import '../supabase/supabasesss.dart';

class AllCategory with ChangeNotifier{
  List<CategoryModel> _allCategory = [];

  List<CategoryModel> get allCategory => _allCategory;
  
  Future<void> getAllCategoryFromSupabase () async {
    var allCategoryFromSupabase = await supabase.from('category').select('*');
    List<CategoryModel> allCategoryList = [];
    for (var eachCategory in allCategoryFromSupabase) {
      allCategoryList.add(
        CategoryModel(
          id: eachCategory['id'],
          image: eachCategory['image'],
          title: eachCategory['title'],
          subtitle: eachCategory['subtitle'],
        ),
      );
    }
    _allCategory = allCategoryList;
    notifyListeners();
  }
}