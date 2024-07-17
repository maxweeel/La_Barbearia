import 'package:flutter/material.dart';
import 'package:la_barbearia/screens/shared/custom_appbar.dart';

class NewAccount extends StatelessWidget {
  const NewAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: customAppBar('Nova Conta'),
     
        body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nome do Usuário',
              ),
              textCapitalization: TextCapitalization.characters,
              autofocus: true,
            ),
           
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'E-mail',
              ),
            ),
            const SizedBox(height: 16,),
            TextFormField(
              obscuringCharacter: "*",
              decoration: const InputDecoration(
                 border: const OutlineInputBorder(),
                labelText: 'Senha',
              ),
              validator: (value ){
                if (value == null || value.trim().isEmpty){
                  return 'O campo precisa ser prenchido';
                }
                if (value.length < 5){
                  return 'A senha tem que ter mais de 5 letras';
                }
                return null;
              },
            ),
            const SizedBox(height: 16,),
            TextFormField(
              obscuringCharacter: "*",
              decoration: const InputDecoration(
                 border: OutlineInputBorder(),
                labelText: 'Confirme Senha',
              ),
               validator: (value ){
                if (value == null || value.trim().isEmpty){
                  return 'As senhas presisão ser similares';
                }
                return null;
              },
            ),
            const SizedBox(height: 24,),
            FilledButton(
              onPressed: (){}, 
              child: Text('Confirmar Cadastro', ),
              style: FilledButton.styleFrom(
                backgroundColor:  Color.fromARGB(255, 0, 58, 250),
                shape: StadiumBorder(),
                padding: EdgeInsets.all(20),
              ),
             )
          ]
        ),
      ),
    );
  }
}