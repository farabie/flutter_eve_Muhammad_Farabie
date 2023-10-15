import 'package:flutter/material.dart';
import 'package:syakila_bakery_application/ui/pages/pages.dart';

void main() {
  runApp(const SyakilaBakeryApp());
}

class SyakilaBakeryApp extends StatelessWidget {
  const SyakilaBakeryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
