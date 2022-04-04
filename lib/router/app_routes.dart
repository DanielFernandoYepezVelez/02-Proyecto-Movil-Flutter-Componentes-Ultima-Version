import 'package:flutter/material.dart';

/* Screens */
import 'package:widgets_components_app/screens/screens.dart';

/* Models */
import 'package:widgets_components_app/models/models.dart';

class AppRoutes {
  /* Ruta Inicial De Mi App */
  static const initialRoute = 'home';

  /* Todas Las Opciones Del Home (Landing Page) Con La Ruta - Nombre - Pantalla - Icon Para Ser Mapiadas De Forma Dinámica */
  static final menuOptions = <MenuOption>{
    MenuOption(
      route: 'Listview1',
      name: 'Listview Tipo 1',
      screen: const ListView1Screen(),
      icon: Icons.list_alt_outlined,
    ),
    MenuOption(
      route: 'Listview2',
      name: 'Listview Tipo 2',
      screen: const ListView2Screen(),
      icon: Icons.list,
    ),
    MenuOption(
      route: 'alert',
      name: 'Alertas - Alerts',
      screen: const AlertScreen(),
      icon: Icons.add_alert_outlined,
    ),
    MenuOption(
      route: 'card',
      name: 'Tarjetas - Cards',
      screen: const CardScreen(),
      icon: Icons.credit_card,
    ),
    MenuOption(
      route: 'avatar',
      name: 'Circle Avatar',
      screen: const AvatarScreen(),
      icon: Icons.supervised_user_circle_outlined,
    ),
    MenuOption(
      route: 'animated',
      name: 'Animated Container',
      screen: const AnimatedScreen(),
      icon: Icons.play_circle_fill_outlined,
    ),
    MenuOption(
      route: 'inputs',
      name: 'Text Inputs',
      screen: const InputsScreen(),
      icon: Icons.input_rounded,
    ),
    MenuOption(
      route: 'slider',
      name: 'Sliders & Checks',
      screen: const SliderScreen(),
      icon: Icons.slideshow_outlined,
    ),
    MenuOption(
      route: 'listviewbuilder',
      name: 'InfiniteScroll & PullToRefresh',
      screen: const ListviewBuilderScreen(),
      icon: Icons.build_circle_outlined,
    ),
  }.toList();

  /* ¡¡¡DIFERENCIA!!! ESTO ES UN MÉTODO ESTÁTICO */
  /* Menú De Rutas Existentes En Mi Aplicación Pero Ya Desde Una Clase Menú Options Que Esta En La Parte Superior */
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    /* Agrega La Ruta Para Pemitir Entrar Al Home Como Landing Page */
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  /* ¡¡¡DIFERENCIA!!! ESTO ES UNA PROPIEDAD ESTÁTICA */
  /* Menú De Rutas Existentes En Mi Aplicación (Esta Forma De En Rutar También Esta Bien)*/
  /* static Map<String, Widget Function(BuildContext)> routes =
      <String, WidgetBuilder>{
    'home': (BuildContext context) => const HomeScreen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
    'Listview1': (BuildContext context) => const ListView1Screen(),
    'Listview2': (BuildContext context) => const ListView2Screen(),
  }; */

  /* Para Cuando El Nombre De Una Ruta No Exista En Mi Menú De Opciones Aplico Una Ruta Dinámica */
  /* Se Aplica En El PushNamed Donde El Nombre De La Ruta No Haga Parte DeL Menú De Rutas */
  static Route<dynamic> Function(RouteSettings) onGenerateRoute =
      (routeSettings) {
    // print(routeSettings);
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  };
}
