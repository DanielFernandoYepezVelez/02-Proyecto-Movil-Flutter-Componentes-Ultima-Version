import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ['Juego 1', 'Juego 2', 'Juego 3', 'Juego 4', 'Juego 5'];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Listview Tipo 2'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.access_alarm_outlined),
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: () {
            // print('Hola Mundo');
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
