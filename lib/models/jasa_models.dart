class JasaModel {
  String id;
  String image;
  String title;
  String deskripsi;
  String harga;
  String perkiraanWaktuPengerjaan;
  String batasRevisi;
  String idPenjual;
  // List<String> idCategory;

  JasaModel(
      {required this.id,
      required this.image,
      required this.title,
      required this.deskripsi,
      required this.harga,
      required this.perkiraanWaktuPengerjaan,
      required this.batasRevisi,
      required this.idPenjual,
      // required this.idCategory
    });
}
