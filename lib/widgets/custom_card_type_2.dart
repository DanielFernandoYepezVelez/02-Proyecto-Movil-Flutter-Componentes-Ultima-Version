import 'package:flutter/material.dart';

/* Theme */
import 'package:widgets_components_app/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CustomCardType2({
    Key? key,
    this.name,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      clipBehavior: Clip.antiAlias,
      shadowColor: AppTheme.colorPrimaryDark.withOpacity(0.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: <Widget>[
          FadeInImage(
            height: 230,
            fit: BoxFit.cover,
            width: double.infinity,
            image: NetworkImage(imageUrl),
            fadeInDuration: const Duration(milliseconds: 300),
            placeholder: const AssetImage('assets/images/loading.gif'),
          ),
          if (name != null)
            Container(
              child: Text(name!),
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            ),
        ],
      ),
    );
  }
}
