import '../supabase/supabasesss.dart';

class Penjual {
  // int id;
  // String image;
  // String name;
  // String username;
  // String email;
  // String password;
  // String keteranganSingkat;
  // String keteranganDetail;
  // String lokasi;

  // static final List<Penjual> _allPenjual= [
  //   Penjual(id: 1, image: "https://picsum.photos/280", name: "Naufal Parama Rafif", username: 'opalPackrama', email: "naufalparamarafif@gmail.com", password: "apaanaelahwak", keteranganSingkat: "Passionate Software Engineer", keteranganDetail: "ga;fdhlkjhhhhhhhhhhhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjjjjjfdagjkfdjhwgoifdhlkjhhhhhhhhhhhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjjjjjfdagjkfdjhwgoifdhlkjhhhhhhhhhhhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjjjjjfdagjkfdjhwgoifdhlkjhhhhhhhhhhhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjjjjjfdagjkfdjhwgoifdhlkjhhhhhhhhhhhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjjjjjfdagjkfdjhwgoi", lokasi: "Depok, Indonesia"),
  //   Penjual(id: 2, image: "https://picsum.photos/282", name: "Osama bin Laden", username: 'osamaladuniboss', email: "osamabingladeng@gmail.com", password: "duarduarduarrrr", keteranganSingkat: "Passionate Bomber Developer", keteranganDetail: "ga;fdhlkjhhhhhhhhhhhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjjjjjfdagjkfdjhwgoifdhlkjhhhhhhhhhhhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjjjjjfdagjkfdjhwgoifdhlkjhhhhhhhhhhhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjjjjjfdagjkfdjhwgoifdhlkjhhhhhhhhhhhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjjjjjfdagjkfdjhwgoifdhlkjhhhhhhhhhhhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjjjjjfdagjkfdjhwgoi", lokasi: "Madura, Indonesia"),
  // ];

  // static Penjual getPenjualByUsername(String username){
  //   return _allPenjual.firstWhere((penjual) => penjual.username == username);
  // }

  // Penjual({required this.id, required this.image, required this.name, required this.username, required this.email, required this.password, required this.keteranganSingkat, required this.keteranganDetail, required this.lokasi});
  Future<Map<String, dynamic>> getPenjualById (String id) async {
    var penjual = await supabase.from('penjual').select('*').eq('id', id);
    return penjual[0];
  }
}