import 'package:flutter/material.dart';

class Barber {
   String name;
   TimeOfDay? waitingtime;
   int price;
   String location;

  Barber({
    required this.name,
     this.waitingtime,
    required this.price,
    required this.location,
  });
}