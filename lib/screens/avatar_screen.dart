import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Daniel Yepez'),
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.green[900],
              child: const Text('DY'),
            ),
          ),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage(
              'https://i0.wp.com/codigoespagueti.com/wp-content/uploads/2021/12/Dragon-Ball-super-dibujante.jpg?resize=1280%2C720&quality=80&ssl=1'),
        ),
      ),
    );
  }
}
