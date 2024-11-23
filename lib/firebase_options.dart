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
    apiKey: 'AIzaSyDTu9h7dmRIrp0TwAuh7sDvwwJ280k1tnY',
    appId: '1:483035825048:web:887ae598489419d4af21ed',
    messagingSenderId: '483035825048',
    projectId: 'deshi-mart-b880a',
    authDomain: 'deshi-mart-b880a.firebaseapp.com',
    storageBucket: 'deshi-mart-b880a.appspot.com',
    measurementId: 'G-1RQ7YEV2TZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD-obzLjtIeur5S9hx7TsE2BuiU7pGc0s8',
    appId: '1:483035825048:android:a3123a293bf60f4eaf21ed',
    messagingSenderId: '483035825048',
    projectId: 'deshi-mart-b880a',
    storageBucket: 'deshi-mart-b880a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDN7LqRemlfr26f1HolhRIbnznJavCTvlM',
    appId: '1:483035825048:ios:8e446ad3f42d6058af21ed',
    messagingSenderId: '483035825048',
    projectId: 'deshi-mart-b880a',
    storageBucket: 'deshi-mart-b880a.appspot.com',
    iosBundleId: 'com.example.deshimart',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDN7LqRemlfr26f1HolhRIbnznJavCTvlM',
    appId: '1:483035825048:ios:8e446ad3f42d6058af21ed',
    messagingSenderId: '483035825048',
    projectId: 'deshi-mart-b880a',
    storageBucket: 'deshi-mart-b880a.appspot.com',
    iosBundleId: 'com.example.deshimart',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDTu9h7dmRIrp0TwAuh7sDvwwJ280k1tnY',
    appId: '1:483035825048:web:1dd7c1f1ae2f3379af21ed',
    messagingSenderId: '483035825048',
    projectId: 'deshi-mart-b880a',
    authDomain: 'deshi-mart-b880a.firebaseapp.com',
    storageBucket: 'deshi-mart-b880a.appspot.com',
    measurementId: 'G-34G4VK384R',
  );
}