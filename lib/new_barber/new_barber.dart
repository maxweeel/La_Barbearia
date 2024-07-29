import 'package:flutter/material.dart';
import 'package:la_barbearia/screens/home/custom__dropdown_menu.dart';
import 'package:la_barbearia/screens/shared/custom_appbar.dart';
import 'package:flutter/widgets.dart';
import 'package:la_barbearia/theme.dart';
import 'package:la_barbearia/model/Barber.dart';
import 'package:la_barbearia/repository/barber.repository.dart';

class NewBarber extends StatelessWidget{
  NewBarber({super.key});

  final _listOfChairs = List.generate(10, (index) => "Cadeiras ${index + 1}");
  var entryTimeController = TextEditingController(
    text: formatTime(TimeOfDay.now()),
  );
  final nameController = TextEditingController();
  final locationController = TextEditingController();
  final  chairnumberController = TextEditingController();
  final  priceController = TextEditingController();

@override
Widget build(BuildContext context){
    return Scaffold(
      appBar: customAppBar('Nova Barbearia'),
        body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nome de Barbearia',
              ),
              textCapitalization: TextCapitalization.characters,
              autofocus: true,
            ),
           
            const SizedBox(height: 16),
            TextField(
              controller: locationController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Endereço',
              ),
            ),
            

            CustomDropdownMenu(
              list: _listOfChairs,
            ),
            
            const SizedBox(height: 16,),
            TextField(
              controller: entryTimeController,
              decoration: InputDecoration(
                labelText: 'Horário do Corte',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.schedule),
                  onPressed: () async {
                    entryTimeController.text =
                        await showCustomTimePicker(context);
                  },
                ),
              ),
              readOnly: true,
              
            ),
             const SizedBox(height: 16),
            TextField(
              controller: priceController,
              decoration: InputDecoration(
                 border: const OutlineInputBorder(),
                 labelText: 'Preços',
              ),
              textCapitalization: TextCapitalization.characters,
              autofocus: true,
            ),
            const SizedBox(height: 24,),
            FilledButton(
              onPressed: (){
                 save(context);
              }, 
              child: Text('Confirmar Cadastro', ),
              style: FilledButton.styleFrom(
                backgroundColor:  Color.fromARGB(255, 0, 58, 250),
                shape: StadiumBorder(),
                padding: EdgeInsets.all(20),
              ),
             )
          ],
        ),
        ),
      );
  }

Future<void> save(BuildContext context) async {
    try {
      final barber = Barber(
        name: nameController.text,
        location: locationController.text,
        chairnumber: chairnumberController.text,
        waitingtime: entryTimeController.text,
        price: priceController.text,
      );
      final id = await BarberRepository.insert(barber);
      if (id != 0) {
        var snackBar = SnackBar(
          content: Text('Barbearia n° $id foi salvo com sucesso!!!'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        var snackBar = const SnackBar(
          content: Text('Lamento, não foi possível salver a barbearia!!!'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    } catch (error) {
      print(error);
    }
  }

}
Future<String> showCustomTimePicker(BuildContext context) async {
  final selectTime = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
  );
  if (selectTime != null) {
    return formatTime(selectTime);
  }
  return formatTime(TimeOfDay.now());
}

String formatTime(TimeOfDay time) {
  return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
}