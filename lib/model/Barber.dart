import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:la_barbearia/model/soon_barber.dart';

class Barber {
  String name;
  String waitingtime;
  Double price;
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
        'soonBarber': soonBarber.label,
      };

  factory Barber.fromMap(Map<String, Object?> map) {
    return Barber(
      name: map['name'] as String,
      location: map['location'] as String,
      chairnumber: map['chairnumber'] as String,
      waitingtime: map['waitingtime'] as String,
      price: map['price'] as Double,
       soonBarber: _fromLabel(map['soonBarber'] as String),
    );
  }
    static SoonBarber _fromLabel(String label) {
    switch (label) {
      case 'soon1':
        return SoonBarber.soon1;
      case 'soon2':
        return SoonBarber.soon2;
      case 'soon3':
        return SoonBarber.soon3;
      default:
        throw ArgumentError('Unknown SoonBarber label: $label');
    }
  }

}
