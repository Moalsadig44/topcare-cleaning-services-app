import 'package:flutter/material.dart';
import 'package:topcare/utilities/router.dart';
import 'package:topcare/utilities/routes.dart';
// ignore: unused_import
import 'package:topcare/views/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TopCare',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFE5E5E5),
        //color off all pages
        primaryColor: Colors.blueAccent,
        inputDecorationTheme: InputDecorationTheme(
            labelStyle: Theme.of(context).textTheme.subtitle1,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2.0),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2.0),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2.0),
              borderSide: const BorderSide(color: Colors.grey),
            )),

        //bottons color
      ),
      onGenerateRoute: onGenerateRoute,
      initialRoute: AppRoutes.LoginPageRoute,
      //calls the ongenraate function in router
    );
  }
}
