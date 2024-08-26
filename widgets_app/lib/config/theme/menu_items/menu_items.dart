import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({required this.title, required this.subtitle, required this.link, required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subtitle: 'Varios botones en Flutter',
    link:'/buttons',
    icon: Icons.smart_button_outlined
   ),

  MenuItem(
    title: 'Tarjetas',
    subtitle: 'Un contenedor estilizado',
    link:'/cards',
    icon: Icons.credit_card
   ),

  MenuItem(
    title: 'ProgressIndicators',
    subtitle: 'Generales y controlados',
    link:'/progress',
    icon: Icons.refresh_rounded
   ),

  MenuItem(
    title: 'Snackbars dialogs',
    subtitle: 'Indicadores en pantalla',
    link:'/snackbars',
    icon: Icons.info_outline
   ),

  MenuItem(
    title: 'Animated container',
    subtitle: 'Statefgul widget animado',
    link:'/animated',
    icon: Icons.check_box_outline_blank_rounded
   ),

  MenuItem(
    title: 'UI Controls + Tiles',
    subtitle: 'Una serie de controles de flutter',
    link:'/ui-controls',
    icon: Icons.car_rental_outlined
   ),

  MenuItem(
    title: 'Tutorial',
    subtitle: 'Introducción a la aplicación',
    link:'/tutorial',
    icon: Icons.accessible_rounded
   ),

  MenuItem(
    title: 'Infinite Scroll y Pull',
    subtitle: 'Listas infinitas y pull to refresh',
    link:'/infinite',
    icon: Icons.list_alt_rounded
   ),
   
];