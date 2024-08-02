import 'package:flutter/material.dart';
import 'package:la_barbearia/repository/barber.repository.dart';
import 'package:la_barbearia/screens/home/components/barber_card.dart';
import 'package:la_barbearia/screens/shared/custom_appbar.dart';
import 'package:la_barbearia/screens/shared/custom_bottonavbar.dart';
import 'package:la_barbearia/model/Barber.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('La Barbearia'),
      drawer: Drawer(
        child: Column(
          children: [
            const PopupMenuItem(child: Text('Barbearias')),
            const PopupMenuItem(child: Text('Preços')),
            const PopupMenuItem(child: Text('Mapa')),
            const PopupMenuItem(child: Text('Agendar')),
            const PopupMenuItem(child: Text('Adicionar Barbearia')),
            const PopupMenuItem(child: Text('Login')),
            PopupMenuItem(
              child: const Text('Registro'),
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
      body: FutureBuilder<List<Barber>>(
        future: BarberRepository.findAll(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.none || snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            print('Nenhuma barbearia encontrada.');
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Não existem Barbearias cadastradas!!!'),
                  SizedBox(height: 16),
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
          print('Barbearias encontradas: ${listOfBarber.length}');
           listOfBarber.forEach((barber) {
      print('Barbearia encontrada: ${barber.name}, ${barber.location}, ${barber.chairnumber}, ${barber.price}, ${barber.waitingtime}, ${barber.soonBarber}');
    });
          return Padding(
            padding: const EdgeInsets.all(16),
            child: ListView.builder(
              itemCount: listOfBarber.length,
              itemBuilder: (context, index) => BarberCard(barber: listOfBarber[index]),
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

