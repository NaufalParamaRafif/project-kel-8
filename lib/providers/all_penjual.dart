import 'package:flutter/material.dart';
import 'package:project_kelompok_8/models/penjual_models.dart';

import '../supabase/supabasesss.dart';

class AllPenjual with ChangeNotifier {
  List<PenjualModel> _allPenjual = [];

  List<PenjualModel> get allPenjual => _allPenjual;

  PenjualModel? getPenjualByIdFromLocal (String id) {
    for (var eachPenjual in allPenjual) {
      if(eachPenjual.id == id) {
        return eachPenjual;
      }
    }
    return null;
  }

  Future<void> getPenjualByIdFromSupabase (String id) async {
    var penjualFromSupabase = await supabase.from('penjual').select('*').eq('id', id);
    Map<String,dynamic> singlePenjualFromSupabase = penjualFromSupabase[0];
    _allPenjual.add(
      PenjualModel(
        id: singlePenjualFromSupabase['id'], 
        image: singlePenjualFromSupabase['image'], 
        name: singlePenjualFromSupabase['name'], 
        username: singlePenjualFromSupabase['username'], 
        keteranganDetail: singlePenjualFromSupabase['keterangan_detail'], 
        keteranganSingkat: singlePenjualFromSupabase['keterangan_singkat'], 
        lokasi: singlePenjualFromSupabase['lokasi'],
      )
    );
    notifyListeners();
  }
}