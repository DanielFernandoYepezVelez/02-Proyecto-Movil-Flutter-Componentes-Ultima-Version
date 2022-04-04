import 'package:flutter/material.dart';

/* Theme */
import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: AppTheme.colorPrimaryDark.withOpacity(0.5),
      child: Column(
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.photo_album_outlined),
            title: Text('Soy Un Titulo'),
            subtitle: Text(
                'Est sunt qui veniam commodo enim sunt amet tempor anim enim mollit excepteur culpa ut. Incididunt aliqua tempor non ad eiusmod do nostrud proident consectetur enim. Proident fugiat laboris irure nulla proident consequat. Adipisicing amet aute quis elit irure Lorem dolore aliquip do dolor nulla. Dolore sit incididunt proident elit id nulla pariatur pariatur laboris mollit exercitation cupidatat. Dolor eu officia do nostrud. Irure ad est fugiat est ipsum nisi elit reprehenderit est labore consectetur velit adipisicing ut.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancelar')),
                TextButton(onPressed: () {}, child: const Text('Aceptar')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
