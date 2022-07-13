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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDwvvGsxDTQ5W9ZqhrV4GCgpSsH4Y0VgUE',
    appId: '1:256139521177:web:b2607414569b1fd4ce1c08',
    messagingSenderId: '256139521177',
    projectId: 'fir-tutorial-c4b8a',
    authDomain: 'fir-tutorial-c4b8a.firebaseapp.com',
    storageBucket: 'fir-tutorial-c4b8a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDwjbz30_6XXE0zJGpyu6RVc7W0dcTsk1s',
    appId: '1:256139521177:android:b89140c09bd37205ce1c08',
    messagingSenderId: '256139521177',
    projectId: 'fir-tutorial-c4b8a',
    storageBucket: 'fir-tutorial-c4b8a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDza0zTtOT6eRfOtD9rcRBco_v99y7sRwo',
    appId: '1:256139521177:ios:40ee2b8285557289ce1c08',
    messagingSenderId: '256139521177',
    projectId: 'fir-tutorial-c4b8a',
    storageBucket: 'fir-tutorial-c4b8a.appspot.com',
    iosClientId: '256139521177-or387hk1qkdeggilvp24k9cir2e20h1m.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginui',
  );
}
