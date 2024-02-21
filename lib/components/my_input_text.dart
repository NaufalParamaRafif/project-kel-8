import 'package:flutter/material.dart';

class inputEmail extends StatelessWidget {
  const inputEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 15),
        filled: true,
        fillColor: const Color.fromARGB(255, 214, 214, 214),
        hintText: 'Masukkan email',
        border: UnderlineInputBorder(),
        labelText: 'Email',
      ),
    );
  }
}

class inputPassword extends StatelessWidget {
  const inputPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 15),
        filled: true,
        fillColor: const Color.fromARGB(255, 214, 214, 214),
        hintText: 'Masukkan password',
        border: UnderlineInputBorder(),
        labelText: 'Password',
      ),
    );
  }
}
