import 'package:flutter/material.dart';

class CustomBottonavbar extends StatelessWidget {
  const CustomBottonavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.black), 
          label: 'Perfil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_active, color: Colors.black),
          label: 'Notificação',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month, color: Colors.black),
          label: 'Agendamento',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu, color: Colors.black),
          label: 'Menu',
        ),
      ],
   );
  }
}