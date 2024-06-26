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
    apiKey: 'AIzaSyCijEnZd0oTbczBMmLRHCdp4P9nqFokGoE',
    appId: '1:263254548752:web:2939f163a9d059f0b0c595',
    messagingSenderId: '263254548752',
    projectId: 'product-db-e205f',
    authDomain: 'product-db-e205f.firebaseapp.com',
    databaseURL: 'https://product-db-e205f-default-rtdb.firebaseio.com',
    storageBucket: 'product-db-e205f.appspot.com',
    measurementId: 'G-F5NNZXK1WW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAHNWQTNLJ8j9buiq3xJMP7i8THovK5-zY',
    appId: '1:263254548752:android:6fc511e10d24847eb0c595',
    messagingSenderId: '263254548752',
    projectId: 'product-db-e205f',
    databaseURL: 'https://product-db-e205f-default-rtdb.firebaseio.com',
    storageBucket: 'product-db-e205f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB1qZgmnkxe9BIYNRYH_mnNwjxx-fTpJsQ',
    appId: '1:263254548752:ios:90ab74882eacee6db0c595',
    messagingSenderId: '263254548752',
    projectId: 'product-db-e205f',
    databaseURL: 'https://product-db-e205f-default-rtdb.firebaseio.com',
    storageBucket: 'product-db-e205f.appspot.com',
    iosBundleId: 'com.example.product',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB1qZgmnkxe9BIYNRYH_mnNwjxx-fTpJsQ',
    appId: '1:263254548752:ios:847c13b2dd742ff6b0c595',
    messagingSenderId: '263254548752',
    projectId: 'product-db-e205f',
    databaseURL: 'https://product-db-e205f-default-rtdb.firebaseio.com',
    storageBucket: 'product-db-e205f.appspot.com',
    iosBundleId: 'com.example.product.RunnerTests',
  );
}
