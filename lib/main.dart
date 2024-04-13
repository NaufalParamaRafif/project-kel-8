import 'package:flutter/material.dart';
import 'package:project_kelompok_8/pages/daftar_dengan_email_page.dart';
import 'package:project_kelompok_8/pages/kode_otp_page.dart';
import 'package:project_kelompok_8/pages/login_dengan_email_page.dart';
import 'package:project_kelompok_8/pages/login_page.dart';
import 'package:project_kelompok_8/pages/main_page.dart';
import 'package:project_kelompok_8/pages/notifications_page.dart';
import 'package:project_kelompok_8/pages/post_page.dart';
import 'package:project_kelompok_8/pages/profile_screen_page.dart';
import 'package:project_kelompok_8/pages/seluruh_kategori_page.dart';
import './pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}
