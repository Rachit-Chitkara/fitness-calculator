import 'package:flash_app/resultpage.dart';
import 'package:flutter/material.dart';
import 'package:flash_app/WelcomeScreen.dart';
import 'package:flash_app/LoginScreen.dart';
import 'package:flash_app/RegistrationScreen.dart';
import 'inputpage.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        inputValues.id: (context) => inputValues(),
      },
    );
  }
}
