// import 'package:flutter/material.dart';
// import 'package:project_kelompok_8/components/my_card.dart';

// import './../models/jasa_models.dart';

// class WishListPage extends StatefulWidget {
//   const WishListPage({super.key});

//   @override
//   State<WishListPage> createState() => _WishListPageState();
// }

// class _WishListPageState extends State<WishListPage> {
//   final List<Jasa> jasaDefault = Jasa.getAllJasa();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         foregroundColor: Colors.white,
//         backgroundColor: Color(0xFF33691E),
//         leading: IconButton(onPressed: () {
//           Navigator.pop(context);
//         }, icon: Icon(Icons.arrow_back_ios)),
//         title: Text("Wishlist"),
//       ),
//       body: ListView(
//         padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
//         children: [
//           GridView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             itemCount: jasaDefault.length,
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               childAspectRatio: 6/9,
//               crossAxisSpacing: 15,
//               mainAxisSpacing: 15,
//             ),
//             itemBuilder: (context, index) => DefaultJasaCard(jasa: jasaDefault[index])
//             ,
//           ),
//         ],
//       ),
//     );
//   }
// }