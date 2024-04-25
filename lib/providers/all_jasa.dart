import 'package:flutter/material.dart';

import '../models/jasa_models.dart';
import '../supabase/supabasesss.dart';

class AllJasa with ChangeNotifier {
  List<JasaModel> _allJasa = [];

  List<JasaModel> get allJasa => _allJasa;
  
  Future<void> getAllJasaFromSupabase () async {
    var allJasaFromSupabase = await supabase.from('jasa').select('*');
    List<JasaModel> allJasaList = [];
    for (var eachJasa in allJasaFromSupabase) {
      allJasaList.add(
        JasaModel(
          id: eachJasa['id'],
          image: eachJasa['image'],
          title: eachJasa['title'],
          deskripsi: eachJasa['deskripsi'],
          harga: eachJasa['harga'].toString(),
          perkiraanWaktuPengerjaan: eachJasa['perkiraan_waktu_pengerjaan'],
          batasRevisi: eachJasa['batas_revisi'],
          idPenjual: eachJasa['id_penjual'],
        ),
      );
    }
    _allJasa = allJasaList;
    notifyListeners();
  }

  

  JasaModel? getPenjualByIdFromLocal (String id) {
    for (var eachJasa in allJasa) {
      if(eachJasa.id == id) {
        return eachJasa;
      }
    }
    return null;
  }

  Future<void> getJasaByIdFromSupabase (String id) async {
    var jasaFromSupabase = await supabase.from('jasa').select('*').eq('id', id);
    // var jasaFromSupabase = await supabase.from('jasa').select('id, team_name, users(id, name)');
    var singleJasaFromSupabase = jasaFromSupabase[0];
    JasaModel singleJasaModelFromSupabase = JasaModel(
      id: singleJasaFromSupabase['id'],
      image: singleJasaFromSupabase['image'],
      title: singleJasaFromSupabase['title'],
      deskripsi: singleJasaFromSupabase['deskripsi'],
      harga: singleJasaFromSupabase['harga'].toString(),
      perkiraanWaktuPengerjaan: singleJasaFromSupabase['perkiraan_waktu_pengerjaan'],
      batasRevisi: singleJasaFromSupabase['batas_revisi'],
      idPenjual: singleJasaFromSupabase['id_penjual'],
    );
    _allJasa.add(singleJasaModelFromSupabase);
    notifyListeners();
  }
  // Future<Map<String, dynamic>> getJasaById (String id) async {
  //   var jasa = await supabase.from('jasa').select('*').eq('id', id);
  //   return jasa[0];
  // }
}