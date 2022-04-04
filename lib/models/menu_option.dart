/* No Importa Todo El Package De Material, Solo Hace Visible El Tipo De Dato "IconData" */
/* No Importa Todo El Package De Material, Solo Hace Visible El Tipo De Dato "Widget" */
import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  final String route;
  final String name;
  final Widget screen;
  final IconData icon;

  MenuOption({
    required this.route,
    required this.name,
    required this.icon,
    required this.screen,
  });
}
