import 'package:flutter/material.dart';

class Barber {
   String name;
  String waitingtime;
   String price;
   String location;
   String chairnumber;
   

  Barber({
    required this.name,
    required this.waitingtime,
    required this.price,
    required this.location,
    required this.chairnumber,
  });

   Map<String,Object?> toMap() => {
    'name': name,
    'location': location,
    'chairnumber': chairnumber,
    'waitingtime': waitingtime,
    'price': price, 
  };

  factory Barber.fromMap(Map<String,Object?> map){
        return Barber(
          name: map['name'] as String,
          location: map['location'] as String,
          chairnumber: map['chairnumber'] as String,
          waitingtime: map['waitingtime'] as String,
          price: map['price'] as String,
        );
      }
}

