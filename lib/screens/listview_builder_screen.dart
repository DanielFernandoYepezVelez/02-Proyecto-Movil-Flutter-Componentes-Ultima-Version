import 'package:flutter/material.dart';

class ListviewBuilderScreen extends StatefulWidget {
  const ListviewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListviewBuilderScreen> createState() => _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends State<ListviewBuilderScreen> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();

  //* En Los StatefulWidgets Tenemos Dos Pasos Importantes En El Ciclo De Vida
  //* Uno Es Cuando El State Se Crea Por Primera Y Única Vez Que Se Conoce Como El initState
  //* Con Un Hot-reload El initState No Se Vuelve A Crear
  //* Con Un Hot-restart El State De Un StatefulWidget Se Vuelve A Crear, Por Ende, Se Crea El initState
  //* Si Se Hacen Cambios En El initState Se Debe Hacer Un Hot-Restart Y No Un Hot-reload
  @override
  void initState() {
    super.initState();

    //* Este Evento Listener, Me Sirve Para Estar Escuchando El ScrollController Y Saber Su Valor
    //* Aquí Estamos Haciendo Un InfiniteScroll (No Es Un Caso Real 100%)
    scrollController.addListener(() {
      print(
          '${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');

      if ((scrollController.position.pixels) >=
          (scrollController.position.maxScrollExtent)) {
        add5();
      }
    });
  }

  void add5() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: imagesIds.length,
          controller: scrollController,
          itemBuilder: (BuildContext context, int index) {
            return FadeInImage(
              height: 300,
              fit: BoxFit.cover,
              width: double.infinity,
              placeholder: const AssetImage('assets/images/loading.gif'),
              image: NetworkImage(
                'https://picsum.photos/500/300?image=${imagesIds[index]}',
              ),
            );
          },
        ),
      ),
    );
  }
}
