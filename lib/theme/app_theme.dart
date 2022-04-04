import 'package:flutter/material.dart';

class AppTheme {
  static const Color colorPrimaryDark = Colors.green;
  static const Color colorPrimaryLight = Colors.indigo;
  static const Color colorSecondDark = Colors.black;

  /* ThemeData() Se Enfoca En La Apariencia Visual De Mi Aplicación Y Su Objetivo Principal 
  Es Dar Una Apariencia Visual Y Global De Toda Mi App Y Lo Hace De La Siguiente Manera:
  Toma Todo El Tema dark() Ó light() U Otro Y Gracias, A La Palabra copyWith(), 
  Se Sobreescriben Propiedades Y Widgets Que Use Ese Tema Seleccionado En La App Y A Su Vez,
  Esos Widgets Tienen Propiedades Internas Que Son Las Que Cambian La Apariencia Visual Finalmente.
  Pero Además, Las Propiedades Y Los Widgets Deben Ser Especificados Dentro De La
  Palabra copyWith() Como Lo Vemos En La Parte Inferior. Y Por Último, En La App Se Va A Ver
  Reflejado El Cambio Visual, Cuando Esa Propiedad Y/O Widget Sea Utilizado. 
  
  La Única Forma De Que Este Tema Global No Funcione, Es Que Se Asigne Una Apariencia Directa
  En El Widget, Como El Color Y Demás. */

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    // Color Primario
    primaryColor: colorPrimaryDark,

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: colorPrimaryDark,
      elevation: 0,
    ),

    // Icon Theme
    iconTheme: const IconThemeData(
      color: colorPrimaryDark,
    ),

    // Scaffold Theme
    scaffoldBackgroundColor: colorSecondDark,

    // Button Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: colorPrimaryDark),
    ),

    // FloatingActionButton Theme
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: colorPrimaryDark,
    ),

    // ElevatedButton Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: const StadiumBorder(),
        primary: AppTheme.colorPrimaryDark,
      ),
    ),

    // InputDecoration Theme
    inputDecorationTheme: const InputDecorationTheme(
      iconColor: colorPrimaryDark,
      floatingLabelStyle: TextStyle(color: colorPrimaryDark),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorPrimaryDark),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorPrimaryDark),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
    ),
  );

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Color Primario
    primaryColor: colorPrimaryLight,

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: colorPrimaryLight,
      elevation: 0,
    ),

    // Icon Theme
    iconTheme: const IconThemeData(
      color: colorPrimaryLight,
    ),

    // FloatingActionButton Theme
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      elevation: 5,
      backgroundColor: colorPrimaryLight,
    ),
  );
}
