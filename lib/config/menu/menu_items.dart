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

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subtitle: 'Varios botones en Flutter',
      url: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subtitle: 'Un contenedor estilizado',
      url: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicators',
      subtitle: 'Generales y controlados',
      url: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars y Dialogos',
      subtitle: 'Indicadores en patalla',
      url: '/snackbars',
      icon: Icons.info_outline_rounded),
  MenuItem(
      title: 'Animated Container',
      subtitle: 'Stateful Widget animado',
      url: '/animated',
      icon: Icons.check_box_outline_blank_rounded),
  MenuItem(
      title: 'UI Controls',
      subtitle: 'Una serie de controles de Flutter',
      url: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'Introduccion a la Aplicacion',
      subtitle: 'Pequeno tutorial introductorio',
      url: '/tutorial',
      icon: Icons.accessibility_rounded),
];
