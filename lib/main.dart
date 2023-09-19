import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_challenge/home.dart';
import 'package:mobile_challenge/next.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const HomePage(),
      getPages: [
        GetPage(
          name: '/home',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/next',
          page: () => const NextPage(),
        ),
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
