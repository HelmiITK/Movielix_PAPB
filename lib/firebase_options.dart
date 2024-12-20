// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBUeU5aof2cQXoyQe9H3SEBc__PHWZd5_c',
    appId: '1:550034973964:web:0bfd741039cd7f3d609529',
    messagingSenderId: '550034973964',
    projectId: 'movielix-5b9a2',
    authDomain: 'movielix-5b9a2.firebaseapp.com',
    storageBucket: 'movielix-5b9a2.firebasestorage.app',
    measurementId: 'G-W9BTL2GNGZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCmunigah_Z--i1CnmJrHXNREx-pbdD1z4',
    appId: '1:550034973964:android:964b231e721c4999609529',
    messagingSenderId: '550034973964',
    projectId: 'movielix-5b9a2',
    storageBucket: 'movielix-5b9a2.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAjV7-fXbO6Zgv_ESzlKVsICc5BHh4EWLw',
    appId: '1:550034973964:ios:a87aad5b653f0956609529',
    messagingSenderId: '550034973964',
    projectId: 'movielix-5b9a2',
    storageBucket: 'movielix-5b9a2.firebasestorage.app',
    iosBundleId: 'com.example.movielixfix',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAjV7-fXbO6Zgv_ESzlKVsICc5BHh4EWLw',
    appId: '1:550034973964:ios:a87aad5b653f0956609529',
    messagingSenderId: '550034973964',
    projectId: 'movielix-5b9a2',
    storageBucket: 'movielix-5b9a2.firebasestorage.app',
    iosBundleId: 'com.example.movielixfix',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBUeU5aof2cQXoyQe9H3SEBc__PHWZd5_c',
    appId: '1:550034973964:web:9e1e07dc2bea6e88609529',
    messagingSenderId: '550034973964',
    projectId: 'movielix-5b9a2',
    authDomain: 'movielix-5b9a2.firebaseapp.com',
    storageBucket: 'movielix-5b9a2.firebasestorage.app',
    measurementId: 'G-EJCRMDP370',
  );
}
