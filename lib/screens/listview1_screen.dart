import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ['Juego 1', 'Juego 2', 'Juego 3', 'Juego 4', 'Juego 5'];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Listview Tipo 1'),
      ),
      body: ListView(
        children: <Widget>[
          ...options
              .map(
                (game) => ListTile(
                  leading: const Icon(Icons.access_alarm_outlined),
                  title: Text(game),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ),
              )
              .toList(),
          const Divider(),
        ],
      ),
    );
  }
}
