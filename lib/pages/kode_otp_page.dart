import 'package:flutter/material.dart';
import 'package:project_kelompok_8/components/my_buttons.dart';
import 'package:project_kelompok_8/components/my_input_text.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class KodeOTPPage extends StatelessWidget {
  const KodeOTPPage({super.key});

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
              height: MediaQuery.of(context).size.height * 25 / 100,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 75 / 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
                child: Column(
                  children: [
                    Text(
                      'Kode OTP',
                      style: TextStyle(
                          fontSize: 35,
                          color: Color.fromARGB(255, 55, 130, 94),
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 4 / 100,
                    ),
                    OtpTextField(
                      numberOfFields: 6,
                      borderColor: Colors.black,
                      focusedBorderColor: Colors.black,
                      showFieldAsBox: false,
                      borderWidth: 4.0,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here if necessary
                        print('hokfdsa');
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode) {
                        print('hokfdsa');
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 4 / 100,
                    ),
                    KirimButton(),
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
