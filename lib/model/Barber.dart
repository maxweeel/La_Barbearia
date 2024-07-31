import 'package:flutter/material.dart';
import 'package:la_barbearia/model/soon_barber.dart';

class Barber {
  String name;
  String waitingtime;
  String price;
  String location;
  String chairnumber;
  SoonBarber soonBarber;

  Barber({
    required this.name,
    required this.waitingtime,
    required this.price,
    required this.location,
    required this.chairnumber,
    required this.soonBarber,
  });

  Map<String, Object?> toMap() => {
        'name': name,
        'location': location,
        'chairnumber': chairnumber,
        'waitingtime': waitingtime,
        'price': price,
        'soonBarber': soonBarber,
      };

  factory Barber.fromMap(Map<String, Object?> map) {
    return Barber(
      name: map['name'] as String,
      location: map['location'] as String,
      chairnumber: map['chairnumber'] as String,
      waitingtime: map['waitingtime'] as String,
      price: map['price'] as String,
      soonBarber: (map['soonBarber'] == "soon1")
          ? SoonBarber.soon1
          : (map['soonBarber'] == "soon2")
              ? SoonBarber.soon2
              : SoonBarber.soon3,
    );
  }
}
