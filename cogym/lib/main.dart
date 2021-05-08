import 'package:cogym/Views/LoginPage/loginPage.dart';
import 'package:cogym/Views/MainPage/mainPage.dart';
import 'package:cogym/Views/RegisteryPage/registeryPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      'telaRegistrar':(context) => RegisteryPage(),
      'telaLogin': (context) => LoginPage(),
      'telaPrincipal': (context) => MainPage()
  },
    theme: ThemeData(
      scaffoldBackgroundColor: Color.fromRGBO(39, 39, 39, 50),

    ),home: LoginPage()));
}
