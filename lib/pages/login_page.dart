import 'package:flutter/material.dart';
import './../components/my_buttons.dart';
import './../pages/daftar_dengan_email_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Color.fromARGB(255, 0, 0, 0)],
            begin: Alignment.center,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 65 / 100,
              child: Center(child: Text('hesoyam ayam')),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 55, 130, 94),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              height: MediaQuery.of(context).size.height * 35 / 100,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TelephoneButton(),
                    EmailButton(),
                    GoogleButton(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Belum punya akun?',
                          style: TextStyle(color: Colors.white, fontSize: 19),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const DaftarDenganEmailPage()),);
                          },
                          child: Text(
                            'Daftar',
                            style: TextStyle(color: Colors.blue, fontSize: 19),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
