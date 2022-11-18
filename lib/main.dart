import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_recipes_app_ui/HomeScreen.dart';
import 'package:food_recipes_app_ui/constant.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: KPrimaryColor,
        //fontFamily: "",
      ),
      home: HomeScreen(),
    );
  }
}
