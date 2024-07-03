import 'package:flutter/material.dart';
import 'package:la_barbearia/screens/shared/custom_appbar.dart';
import 'package:flutter/widgets.dart';
class NewCut extends StatelessWidget{
    const NewCut({super.key});

@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: customAppBar('Nova Entrada'),
    floatingActionButton: FloatingActionButton (
      onPressed: () {},
      child: const Icon(Icons.save),
      ),
  );
}
}