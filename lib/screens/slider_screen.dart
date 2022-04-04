import 'package:flutter/material.dart';

/* App Theme */
import 'package:widgets_components_app/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            // divisions: 10,
            value: _sliderValue,
            activeColor: AppTheme.colorPrimaryDark,
            inactiveColor: Colors.grey[800],
            onChanged: _sliderEnable
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
          ),

          //* Primera Opción
          /* Checkbox(
            value: _sliderEnable,
            activeColor: AppTheme.colorPrimaryDark,
            onChanged: (value) {
              _sliderEnable = value ?? true;
              setState(() {});
            },
          ), */

          //* Segunda Opción
          /* Switch(
            value: _sliderEnable,
            activeColor: AppTheme.colorPrimaryDark,
            onChanged: (value) {
              _sliderEnable = value;
              setState(() {});
            },
          ), */

          //* Tercera Opción
          CheckboxListTile(
            value: _sliderEnable,
            title: const Text('CheckBox Habilitar Slider'),
            activeColor: AppTheme.colorPrimaryDark,
            onChanged: (value) {
              _sliderEnable = value ?? true;
              setState(() {});
            },
          ),

          //* Cuarta Opción (La Más Utilizada)
          SwitchListTile.adaptive(
            value: _sliderEnable,
            title: const Text('Switch Habilitar Slider'),
            activeColor: AppTheme.colorPrimaryDark,
            onChanged: (value) {
              _sliderEnable = value;
              setState(() {});
            },
          ),

          //* Muestra Todas Las Licencias Que Esta Utilizando Mi App
          const AboutListTile(),

          FadeInImage(
            fit: BoxFit.contain,
            width: _sliderValue,
            placeholder: const AssetImage('assets/images/loading.gif'),
            image: const NetworkImage(
                'https://phantom-marca.unidadeditorial.es/caaeb7aa78dcb6b513ebf58dfcb6114b/resize/1320/f/jpg/assets/multimedia/imagenes/2022/03/31/16487628517034.jpg'),
          ),

          /* Image(
            width: _sliderValue,
            fit: BoxFit.contain,
            image: const NetworkImage(
                'https://phantom-marca.unidadeditorial.es/caaeb7aa78dcb6b513ebf58dfcb6114b/resize/1320/f/jpg/assets/multimedia/imagenes/2022/03/31/16487628517034.jpg'),
          ), */
        ],
      ),
    );
  }
}
