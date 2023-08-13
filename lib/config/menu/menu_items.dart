import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String url;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subtitle,
      required this.url,
      required this.icon});
}

const apMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones', 
    subtitle: 'Varios botones en Flutter',
     url: '/buttons', 
     icon: Icons.smart_button_outlined
     ),

  MenuItem(
    title: 'Tarjetas', 
    subtitle: 'Un contenedor estilizado',
     url: '/card', 
     icon: Icons.credit_card
     ),
];
