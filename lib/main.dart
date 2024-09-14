import 'package:flutter/material.dart';
// import 'package:movielixfix/screens/home_screen.dart';
import 'package:movielixfix/screens/login_with_google_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // initialRoute: '/home',
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      home: LoginWithGoogle(),

      // routes: {
      //   '/home': (context) => HomeScreen(),
      // },
    );
  }
}
