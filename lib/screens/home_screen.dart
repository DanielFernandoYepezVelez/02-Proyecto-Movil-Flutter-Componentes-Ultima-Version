import 'package:flutter/material.dart';

/* Routes */
import 'package:widgets_components_app/router/app_routes.dart';
import 'package:widgets_components_app/theme/app_theme.dart';

/* Screen */
// import 'package:widgets_components_app/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Componentes En Flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(menuOptions[index].icon),
          title: Text(menuOptions[index].name),
          onTap: () {
            /* Ruta Necesaria Para Los Métodos Comentados De La Clase Navigator */
            /* final route = MaterialPageRoute(
              builder: (context) => const ListView1Screen(),
            ); */

            // Navigator.push(context, route); Permite Regresar A La Pantalla De Donde Se Inicio La Navegación
            // Navigator.pushReplacement(context, route); No Permite Regresar A La Pantalla De Donde Se Inicio La Navegación
            Navigator.pushNamed(context, menuOptions[index].route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: menuOptions.length,
      ),
    );
  }
}
