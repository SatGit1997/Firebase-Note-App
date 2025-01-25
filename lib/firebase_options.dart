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
    apiKey: 'AIzaSyDfoJ8t6-MuzPvySWKuMQavkemR33mhZRo',
    appId: '1:346429116503:web:bbf66438c1abc5457e1312',
    messagingSenderId: '346429116503',
    projectId: 'fir-app-34056',
    authDomain: 'fir-app-34056.firebaseapp.com',
    storageBucket: 'fir-app-34056.firebasestorage.app',
    measurementId: 'G-GME0SC4TX0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD6OC_eXbjuPRakO5Y5c2YKTzxnCDz6sTA',
    appId: '1:346429116503:android:13346d65597b787d7e1312',
    messagingSenderId: '346429116503',
    projectId: 'fir-app-34056',
    storageBucket: 'fir-app-34056.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCrnYuIYdtqKAUHEKVi4JAxjJJwvdk7h34',
    appId: '1:346429116503:ios:aad7360da6b049a57e1312',
    messagingSenderId: '346429116503',
    projectId: 'fir-app-34056',
    storageBucket: 'fir-app-34056.firebasestorage.app',
    iosBundleId: 'com.example.fireNoteApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCrnYuIYdtqKAUHEKVi4JAxjJJwvdk7h34',
    appId: '1:346429116503:ios:aad7360da6b049a57e1312',
    messagingSenderId: '346429116503',
    projectId: 'fir-app-34056',
    storageBucket: 'fir-app-34056.firebasestorage.app',
    iosBundleId: 'com.example.fireNoteApp',
  );
}
