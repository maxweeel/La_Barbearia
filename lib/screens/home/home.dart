import 'package:flutter/material.dart';
import 'package:la_barbearia/screens/shared/custom_appbar.dart';
import 'package:la_barbearia/model/Barber.dart';
import 'package:la_barbearia/screens/shared/custom_bottonavbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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

      body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/logo1.png',
                        width: 110,
                        height: 110,
                        fit: BoxFit.cover,
                        ),
                      SizedBox(width: 9),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Preço: R\$ 30,00',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              'Tempo de espera: 20min',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              'Endereço: Rua Exemplo, 123',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 9),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                             
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                             
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/logo2.png',
                        width: 110,
                        height: 110,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 9),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Preço: R\$ 25,00',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              'Tempo de espera: 40 min',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              'Endereço: Av. Teste, 456',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 9),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                            
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/logo3.png',
                        width: 110,
                        height: 110,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 9),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Preço: R\$ 35,00',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              'Tempo de espera: 25 min',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              'Endereço: Praça Principal, 789',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                        SizedBox(width: 9),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () {
                             
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                              
                },
               ),
              ],
            ),
           ],
          ),
         ),
        ),
        ],
       ),
      ),
     );
  }
}
