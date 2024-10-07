import 'package:flutter/material.dart';
import 'package:movielixfix/screens/home_screen.dart';
import 'package:movielixfix/screens/login_screen.dart';
import 'package:movielixfix/screens/login_with_google_screen.dart';
import 'package:movielixfix/screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      // home: HomeScreen(),
      // home: LoginWithGoogle(),

      routes: {
        '/login': (context) => const LoginWithGoogle(),
        '/register': (context) => const Register(),
        '/login_account': (context) => const Login(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
