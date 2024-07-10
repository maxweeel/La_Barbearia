import 'package:flutter/material.dart';
import 'package:la_barbearia/new_cut/new_barber.dart';
import 'package:la_barbearia/screens/home/home.dart';


void main() {
  runApp(
    MaterialApp(
      initialRoute: 'home',
      routes: {
        'home': (context) => const Home(),
        'new_barber': (context) => NewBarber(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
    ),
  );
}
