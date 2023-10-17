import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:syakila_bakery_application/services/services.dart';
import 'package:syakila_bakery_application/ui/pages/pages.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const SyakilaBakeryApp());
}

class SyakilaBakeryApp extends StatelessWidget {
  const SyakilaBakeryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<auth.User?>.value(
      initialData: null,
      value: AuthServices.userStream,
      child: const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      ),
    );
  }
}
