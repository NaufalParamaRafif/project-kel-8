import '../supabase/supabasesss.dart';

class Categories {
  Future<List<Map<String, dynamic>>> get allCategory async {
    var allcategory = await supabase.from('category').select('*');
    return allcategory;
  }
}