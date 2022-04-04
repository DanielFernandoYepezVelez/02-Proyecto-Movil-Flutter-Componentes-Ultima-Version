import 'package:flutter/material.dart';

/* Routes */
import 'package:widgets_components_app/router/app_routes.dart';

/* ThemeData Global */
import 'package:widgets_components_app/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: const ListView2Screen(),
      initialRoute: AppRoutes.initialRoute,
      // routes: AppRoutes.routes,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.darkTheme,
    );
  }
}
