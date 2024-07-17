import 'package:flutter/material.dart';
import 'package:la_barbearia/screens/home/custom__dropdown_menu.dart';
import 'package:la_barbearia/screens/shared/custom_appbar.dart';
import 'package:flutter/widgets.dart';

class NewBarber extends StatelessWidget{
  NewBarber({super.key});
  final _listOfChairs = List.generate(10, (index) => "Cadeiras ${index + 1}");
  var _entryTimeController = TextEditingController(
    text: formatTime(TimeOfDay.now()),
  );

@override
Widget build(BuildContext context){
    return Scaffold(
      appBar: customAppBar('Nova Barbearia'),
      floatingActionButton: FloatingActionButton (
        onPressed: () {},
        child: const Icon(Icons.save),
        ),
        body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nome de Barbearia',
              ),
              textCapitalization: TextCapitalization.characters,
              autofocus: true,
            ),
           
            const SizedBox(height: 16),
            TextField(
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
              decoration: InputDecoration(
                labelText: 'Horário do Corte',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.schedule),
                  onPressed: () async {
                    _entryTimeController.text =
                        await showCustomTimePicker(context);
                  },
                ),
              ),
              readOnly: true,
              controller: _entryTimeController,
            ),
             const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                 border: const OutlineInputBorder(),
                 labelText: 'Preços',
              ),
              textCapitalization: TextCapitalization.characters,
              autofocus: true,
            ),
          ],
        ),
        ),
      );
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