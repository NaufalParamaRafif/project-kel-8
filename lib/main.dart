import 'package:flutter/material.dart';
import 'package:project_kelompok_8/pages/daftar_dengan_email_page.dart';
import 'package:project_kelompok_8/pages/kode_otp_page.dart';
import 'package:project_kelompok_8/pages/login_dengan_email_page.dart';
import 'package:project_kelompok_8/pages/login_page.dart';
import 'package:project_kelompok_8/pages/main_page.dart';
import 'package:project_kelompok_8/pages/notifications_page.dart';
import 'package:project_kelompok_8/pages/profile_screen_page.dart';
import 'package:project_kelompok_8/pages/seluruh_kategori_page.dart';
import 'package:project_kelompok_8/providers/all_category.dart';
import 'package:project_kelompok_8/providers/all_jasa.dart';
import 'package:project_kelompok_8/providers/all_penjual.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import './pages/home_page.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'huhuy',
    anonKey: 'hehey',
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AllCategory()),
        ChangeNotifierProvider(create: (context) => AllJasa()),
        ChangeNotifierProvider(create: (context) => AllPenjual()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        initialRoute: MainPage.nameRoute,
        routes: {
          MainPage.nameRoute : (context) => MainPage(),
          HomePage.nameRoute : (context) => HomePage(),
          DaftarDenganEmailPage.nameRoute : (context) => DaftarDenganEmailPage(),
          KodeOTPPage.nameRoute : (context) => KodeOTPPage(),
          LoginDenganEmailPage.nameRoute : (context) => LoginDenganEmailPage(),
          LoginPage.nameRoute : (context) => LoginPage(),
          NotificationsPage.nameRoute : (context) => NotificationsPage(),
          // PostPage.nameRoute : (context) => PostPage(thumbnail: , judul: , harga: , gambarProfilePenjual: , namaPenjual: , deskripsiDetailJasa: ),
          ProfileScreenPage.nameRoute : (context) => ProfileScreenPage(),
          SeluruhKategoriPage.nameRoute : (context) => SeluruhKategoriPage(),
        },
      ),
    );
  }
}
