import 'package:flutter/material.dart';
import 'package:project_kelompok_8/components/my_buttons.dart';

class DaftarEmail extends StatelessWidget {
  const DaftarEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 55, 130, 94),
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 255, 255, 255),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_rounded,
              size: 40,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 15 / 100,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 85 / 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
                child: Column(
                  children: [
                    Text(
                      'Daftar',
                      style: TextStyle(
                        fontSize: 35,
                        color: Color.fromARGB(255, 55, 130, 94),
                        fontWeight: FontWeight.w700),
                    ),
                    DaftarButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
