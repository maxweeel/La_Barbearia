import 'package:flutter/material.dart';
import 'package:la_barbearia/model/Barber.dart';
import 'package:la_barbearia/model/soon_barber.dart';
import 'package:la_barbearia/model/soon_barber.dart';

class BarberCard extends StatelessWidget {
  final Barber barber;
  const BarberCard({
    super.key,
    required this.barber

    });

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(barber.name),
      child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 8,
            ),
            
      ), 
     ),
    );
  }
}