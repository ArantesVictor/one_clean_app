import 'package:flutter/material.dart';
import 'package:one_clean_app/features/register/presenter/charter_form_screen.dart';
import 'package:one_clean_app/utils/app_routes.dart';
import './features/home/presenter/charter_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Creator Charter',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        accentColor: Colors.orangeAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CarterListScreen(),
      routes: {
        AppRoutes.CHARTER_FORM: (ctx) => CharterFormScreen(),
      },
    );
  }
}
