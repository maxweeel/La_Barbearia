import 'package:flutter/material.dart';
import 'package:la_barbearia/model/Barber.dart';
import 'package:la_barbearia/model/soon_barber.dart';

class BarberCard extends StatelessWidget {
  final Barber barber;

  const BarberCard({
    super.key,
    required this.barber,
  });

  @override
  Widget build(BuildContext context) {
   
    String getLogoAsset(SoonBarber soonBarber) {
      switch (soonBarber) {
        case SoonBarber.soon1:
          return 'assets/soon1.png'; 
        case SoonBarber.soon2:
          return 'assets/soon2.png'; 
        case SoonBarber.soon3:
          return 'assets/soon3.png'; 
        default:
          return 'assets/default_logo.png'; 
      }
    }

    String formatPrice(String price) {
      return price.isNotEmpty ? price : '0.00';
    }

    return Container(
      key: Key(barber.chairnumber),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  child: Image.asset(
                    getLogoAsset(barber.soonBarber),
                    width: 64,
                    height: 64,
                  ),
                ),
              
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  barber.name,
                                  style: Theme.of(context).textTheme.titleLarge,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  barber.location,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Cadeira: ${barber.chairnumber}',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          Text(
                           'R\$ ${barber.price.toStringAsFixed(2)}',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
