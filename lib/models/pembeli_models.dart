class Pembeli{
  int id;
  String image;
  String name;
  String username;
  String email;
  String password;

  List<Pembeli> allPembeli = [];

  Pembeli({required this.id, required this.image, required this.name, required this.username, required this.email, required this.password}){
    allPembeli.add(Pembeli(id: id, image: image, name: name, username: username, email: email, password: password));
  }
}