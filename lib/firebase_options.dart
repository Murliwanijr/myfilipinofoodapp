// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBaux31uf6Ri-NomSHD0KXC-wGHpxpaoks',
    appId: '1:961237557048:web:9ad141a91389479a272bcd',
    messagingSenderId: '961237557048',
    projectId: 'myfilipinofoodapp',
    authDomain: 'myfilipinofoodapp.firebaseapp.com',
    storageBucket: 'myfilipinofoodapp.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBzGduW9JRZXzQ6KHnWe42Jr7sC0hug9to',
    appId: '1:961237557048:android:e7fc5dd69063345d272bcd',
    messagingSenderId: '961237557048',
    projectId: 'myfilipinofoodapp',
    storageBucket: 'myfilipinofoodapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCh2wlN0KjfvAsw_4bDZy4KH6VQH0z58ko',
    appId: '1:961237557048:ios:5d9ef71a7d06547b272bcd',
    messagingSenderId: '961237557048',
    projectId: 'myfilipinofoodapp',
    storageBucket: 'myfilipinofoodapp.appspot.com',
    iosBundleId: 'com.example.myfilipinofoodapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCh2wlN0KjfvAsw_4bDZy4KH6VQH0z58ko',
    appId: '1:961237557048:ios:d1cf5251a2a2ef6c272bcd',
    messagingSenderId: '961237557048',
    projectId: 'myfilipinofoodapp',
    storageBucket: 'myfilipinofoodapp.appspot.com',
    iosBundleId: 'com.example.myfilipinofoodapp.RunnerTests',
  );
}
