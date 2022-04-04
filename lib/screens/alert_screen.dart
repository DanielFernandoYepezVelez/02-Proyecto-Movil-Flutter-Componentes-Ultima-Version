import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/* Theme */
// import 'package:widgets_components_app/theme/app_theme.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              Text('Este Es El Contenido De La Alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 50),
            ],
          ),
          actions: [
            TextButton(
              child: const Text('Confirmar'),
              onPressed: () => Navigator.pop(context),
            ),
            TextButton(
              child: const Text(
                'Cancelar',
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 5,
          title: const Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              Text('Este Es El Contenido De La Alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 50),
            ],
          ),
          actions: [
            TextButton(
              child: const Text('Confirmar'),
              onPressed: () => Navigator.pop(context),
            ),
            TextButton(
              child: const Text(
                'Cancelar',
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Mostrar Alerta',
              style: TextStyle(fontSize: 18),
            ),
          ),
          // onPressed: () => displayDialogAndroid(context),
          onPressed: () => Platform.isAndroid
              ? displayDialogAndroid(context)
              : displayDialogIOS(context),
          /* style: ElevatedButton.styleFrom(
            primary: AppTheme.colorPrimaryDark,
            shape: const StadiumBorder(),
            elevation: 0,
          ), */
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
