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
    apiKey: 'AIzaSyBPwf-uc-RmSHLadiiNQ2liI-2ooZyAPWI',
    appId: '1:108892802550:web:7a20c2f2480a1ce35b0bd7',
    messagingSenderId: '108892802550',
    projectId: 'projectcopy-7d8ee',
    authDomain: 'projectcopy-7d8ee.firebaseapp.com',
    storageBucket: 'projectcopy-7d8ee.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBPEbBD-Prz4qnI4cr5bEyG9YCPcQUifnY',
    appId: '1:108892802550:android:771ee817b4dba5495b0bd7',
    messagingSenderId: '108892802550',
    projectId: 'projectcopy-7d8ee',
    storageBucket: 'projectcopy-7d8ee.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDbSv0RfNqNIuJ7k8Maiw2KTdBrLybwwl4',
    appId: '1:108892802550:ios:5e35506aad61055d5b0bd7',
    messagingSenderId: '108892802550',
    projectId: 'projectcopy-7d8ee',
    storageBucket: 'projectcopy-7d8ee.appspot.com',
    iosBundleId: 'com.example.technovasion',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDbSv0RfNqNIuJ7k8Maiw2KTdBrLybwwl4',
    appId: '1:108892802550:ios:5e35506aad61055d5b0bd7',
    messagingSenderId: '108892802550',
    projectId: 'projectcopy-7d8ee',
    storageBucket: 'projectcopy-7d8ee.appspot.com',
    iosBundleId: 'com.example.technovasion',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBPwf-uc-RmSHLadiiNQ2liI-2ooZyAPWI',
    appId: '1:108892802550:web:c43a0f152211b93f5b0bd7',
    messagingSenderId: '108892802550',
    projectId: 'projectcopy-7d8ee',
    authDomain: 'projectcopy-7d8ee.firebaseapp.com',
    storageBucket: 'projectcopy-7d8ee.appspot.com',
  );
}