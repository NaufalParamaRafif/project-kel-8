import 'package:flutter/material.dart';
import 'package:project_kelompok_8/pages/kode_otp_page.dart';
import 'package:project_kelompok_8/pages/login_dengan_email_page.dart';

class TelephoneButton extends StatelessWidget {
  const TelephoneButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8)),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 71, 71, 71).withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(1, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                Icon(
                  Icons.call,
                  size: 25,
                ),
                SizedBox(
                  width: 15,
                ),
                Text('Masuk dengan nomor telephone'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EmailButton extends StatelessWidget {
  const EmailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginDenganEmailPage()),);
      },
      child: Ink(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8)),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 71, 71, 71).withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(1, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                Icon(
                  Icons.email_rounded,
                  size: 25,
                ),
                SizedBox(
                  width: 15,
                ),
                Text('Masuk dengan Email'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8)),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 71, 71, 71).withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(1, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                Image.asset(
                  'images/google.png',
                  width: 25,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Masuk dengan Google',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DaftarButton extends StatelessWidget {
  const DaftarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const KodeOTPPage()),);
      },
      child: Ink(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 55, 130, 94),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Center(
                child: Text(
              'Daftar',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            )),
          ),
        ),
      ),
    );
  }
}

class KirimButton extends StatelessWidget {
  const KirimButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 55, 130, 94),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Center(
                child: Text(
              'Kirim',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.w500),
            )),
          ),
        ),
      ),
    );
  }
}

class MasukButton extends StatelessWidget {
  const MasukButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 55, 130, 94),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Center(
                child: Text(
              'Masuk',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            )),
          ),
        ),
      ),
    );
  }
}

class BackButtonWithWhiteBackgroundColor extends StatelessWidget {
  const BackButtonWithWhiteBackgroundColor({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.white),
      ),
      onPressed: () {},
      color: Colors.black,
      icon: Icon(Icons.arrow_back_rounded),
    );
  }
}
