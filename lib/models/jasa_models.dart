import '../supabase/supabasesss.dart';

class Jasa{
  // int id;
  // String image;
  // String title;
  // String deskripsiDetail;
  // String harga;
  // String slug;
  // String perkiraanWaktuPengerjaan;
  // String usernamePenjual;

  // static final List<Jasa> _allJasa = [
  //   Jasa(id: 1, image: "https://picsum.photos/300", title: "Jasa Pembuatan Web Menggunakan MERN Stack, dan Flutter sebagai Aplikasi untuk END USERS", harga: "25.999", deskripsiDetail: 'Adalah sebuah jasa yang menawarkan Omaga ges, mantap sekali wajib dicoba', usernamePenjual: 'opalPackrama', perkiraanWaktuPengerjaan: "2 Minggu", slug: "test-1"),
  //   Jasa(id: 2, image: "https://picsum.photos/301", title: "Jasa Menerjemahkan Bahasa China ke Indonesia", harga: "25.999", deskripsiDetail: 'Adalah sebuah jasa yang menawarkan Omaga ges, mantap sekali wajib dicoba', usernamePenjual: 'opalPackrama', perkiraanWaktuPengerjaan: "1 Minggu", slug: "test-2"),
  //   Jasa(id: 3, image: "https://picsum.photos/302", title: "Jasa Membuat Logo", harga: "25.999", deskripsiDetail: 'Adalah sebuah jasa yang menawarkan Omaga ges, mantap sekali wajib dicoba', usernamePenjual: 'osamaladuniboss', perkiraanWaktuPengerjaan: "2 Minggu", slug: "test-3"),
  // ];

  // static List<Jasa> getAllJasa(){
  //   return _allJasa;
  // }

  // static Jasa getJasaBySlug(String slug){
  //   return _allJasa.firstWhere((jasa) => jasa.slug == slug);
  // }
  
  // Jasa({required this.id, required this.image, required this.title, required this.deskripsiDetail, required this.harga, required this.slug, required this.perkiraanWaktuPengerjaan, required this.usernamePenjual});

  Future<List<Map<String, dynamic>>> get allJasa async {
    var alljasa = await supabase.from('jasa').select('*');
    return alljasa;
  }

  Future<Map<String, dynamic>> getJasaById (int id) async {
    var jasa = await supabase.from('jasa').select('*').eq('id', id);
    return jasa[0];
  }
}