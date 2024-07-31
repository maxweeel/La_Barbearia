import 'package:flutter/material.dart';
import 'package:la_barbearia/repository/barber.repository.dart';
import 'package:la_barbearia/screens/home/components/barber_card.dart';
import 'package:la_barbearia/screens/shared/custom_appbar.dart';
import 'package:la_barbearia/model/Barber.dart';
import 'package:la_barbearia/screens/shared/custom_bottonavbar.dart';
import 'package:la_barbearia/model/soon_barber.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  
    @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context){
   return Scaffold(
      appBar: customAppBar('La Barbearia'),
      drawer: Drawer(
        child: 
        Column(children: [
        const PopupMenuItem(
            child: Text('Barbearias'),
           ),
           const PopupMenuItem(
            child: Text('Preços'),
          ),
          const PopupMenuItem(
            child: Text('Mapa'),
          ),
          const PopupMenuItem(
            child: Text('Agendar'),
          ),
          const PopupMenuItem(
            child: Text('Adicionar Barbearia'),
          ),
          const PopupMenuItem(
            child: Text('Login'),
          ),
           PopupMenuItem(
            child: Text('Registro'),
            onTap: () {
              Navigator.pushNamed(context, 'new_account');
            },
            ),
          ],
         ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'new_barber');
        },
        child: const Icon(Icons.add),
      ),
      
   bottomNavigationBar: const CustomBottonavbar(),

      body: FutureBuilder(
        future: BarberRepository.findAll(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.none || snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(),
            );
          } 
            if(!snapshot.hasData || snapshot.data!.isEmpty){
             return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Não existem tickets cadastrados!!!'),
                  SizedBox(
                    height: 16,
                  ),
                  FilledButton(
                    onPressed: () {
                      updateScreen();
                    },
                    child: const Text('Atualizar'),
                  ),
                ],
              ),
            );
          }
          var listOfBarber = snapshot.data!;
          return Padding(
            padding: const EdgeInsets.all(16),
             child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                     'assets.soon2.png'
                    ),
                    Text(
                      "Bachica",
                       style: Theme.of(context).textTheme.headlineLarge,
                    )
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: listOfBarber.length,
                  itemBuilder: (context, index) => BarberCard(barber: listOfBarber[index]),
                ),
              ),
            ],
          ),
      );
     },
    ),
   );
  }
  void updateScreen() {
    setState(() {});
  }
}

