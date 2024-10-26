import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/pages/create_account_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "King's Shop",
      theme: ThemeData(
        fontFamily: "Lato",
        useMaterial3: true,
      ),
      home: const CreateAccountPage(),
    );
  }
}


