
import 'package:ecom_app/route_name.dart';
import 'package:ecom_app/routing.dart';
import 'package:ecom_app/theme.dart';
import 'package:flutter/material.dart';

import 'size_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecom App Orange',
      theme: AppTheme.appThemeStyle(context),
      initialRoute: RouteNames.home,
      routes: routes,
    );
  }
}