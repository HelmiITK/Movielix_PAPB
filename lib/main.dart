import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:movielix/firebase_options.dart';
import 'package:movielix/screens/detail_film_screen.dart';
import 'package:movielix/screens/forgot_password_screen.dart';
import 'package:movielix/screens/home_screen.dart';
import 'package:movielix/screens/login_screen.dart';
import 'package:movielix/screens/login_with_google_screen.dart';
import 'package:movielix/screens/profile_screen.dart';
import 'package:movielix/screens/register_screen.dart';
import 'package:movielix/screens/search_results_screen.dart';
import 'package:movielix/screens/trailer_movie_screen.dart';
import 'package:movielix/screens/wishlist_screen.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Pastikan widget diinisialisasi terlebih dahulu
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // Konfigurasi Firebase
  );

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
        '/forgot_password': (context) => const ForgotPassword(),
        '/home': (context) => const HomeScreen(),
        '/detail_movie': (context) => const DetailMovie(),
        '/wishlist': (context) => const Wishlist(),
        '/profile': (context) => const Profile(),
        '/trailer_movie': (context) => const TrailerMovie(),
        '/search_results': (context) => const SearchResults(),
      },
    );
  }
}
