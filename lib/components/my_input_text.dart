import 'package:flutter/material.dart';

class InputEmail extends StatelessWidget {
  const InputEmail({super.key});

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

class InputPassword extends StatelessWidget {
  const InputPassword({super.key});

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

class InputUsername extends StatelessWidget {
  const InputUsername({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 15),
        filled: true,
        fillColor: const Color.fromARGB(255, 214, 214, 214),
        hintText: 'Masukkan username',
        border: UnderlineInputBorder(),
        labelText: 'Username',
      ),
    );
  }
}