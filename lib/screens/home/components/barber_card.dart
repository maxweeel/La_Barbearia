import 'package:flutter/material.dart';
import 'package:la_barbearia/model/Barber.dart';
import 'package:la_barbearia/model/soon_barber.dart';
import 'package:la_barbearia/repository/barber.repository.dart';

class BarberCard extends StatelessWidget {
  final Barber barber;

  const BarberCard({
    super.key,
    required this.barber,
  });

  @override
  Widget build(BuildContext context) {
   
    String getLogoAsset(SoonBarber soonBarber) { //Seletor Aleatorio de imagnes//
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

    return Dismissible(
         onDismissed: (direction){
        final result = BarberRepository.delete(barber.chairnumber!);
        print(result);
      },
       direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.red,
        child: Align(
          alignment: Alignment(0.9,0),
          child: Icon(Icons.delete, color: Colors.white,),
          ),
      ),
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
                Container( //Imagem//
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
                      Row( //Numero da Cadeira E Preço do corte//
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            barber.name,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                           barber.location,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      
                      Row( //Numero da Cadeira E Preço do corte//
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Cadeira: ${barber.chairnumber}',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Text(
                           'R\$ ${barber.price.toStringAsFixed(2)}',
                            style: Theme.of(context).textTheme.bodyLarge,
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
