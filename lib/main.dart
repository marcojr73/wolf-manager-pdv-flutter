import 'package:flutter/material.dart';
import 'package:wolf_manager_pdv/pages/authPage.dart';
import 'package:wolf_manager_pdv/utils/colors.dart';
import 'package:wolf_manager_pdv/utils/namedRoutes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wolf-Manager-PDV",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: ColorsUtils.primaryColor, secondary: ColorsUtils.secondary),
        textTheme: Theme.of(context).textTheme.apply(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        NamedRoutes.auth: (context) => const AuthPage()
      },
    );
  }
}
