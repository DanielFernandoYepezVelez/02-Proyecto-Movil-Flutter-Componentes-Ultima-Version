import 'package:flutter/material.dart';

/* Widgets */
import 'package:widgets_components_app/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const <Widget>[
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
            name: 'Una Hermosa Carretera Canadiense',
            imageUrl:
                'https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            name: 'Maravillas De La Madre Tierra',
            imageUrl:
                'https://mymodernmet.com/wp/wp-content/uploads/2020/11/International-Landscape-Photographer-Year-PhotographER-1st-KelvinYuen-2.jpg',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg',
          ),
        ],
      ),
    );
  }
}
