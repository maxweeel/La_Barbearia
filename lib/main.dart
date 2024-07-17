import 'package:flutter/material.dart';
import 'package:la_barbearia/new_account/new_account.dart';
import 'package:la_barbearia/new_barber/new_barber.dart';
import 'package:la_barbearia/screens/home/home.dart';


void main() {
  runApp(
    MaterialApp(
      initialRoute: 'home',
      routes: {
        'home': (context) => const Home(),
        'new_barber': (context) => NewBarber(),
        'new_account': (context) => NewAccount()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
    ),
  );
}
