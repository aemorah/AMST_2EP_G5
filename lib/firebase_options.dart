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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDc4oUk2BgSR_71Be-Ao6T3UqboU2rCN2g',
    appId: '1:451301866816:android:5eabb5fb76552359e7cea5',
    messagingSenderId: '451301866816',
    projectId: 'examamst2pg5',
    storageBucket: 'examamst2pg5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBZS85mtekUAmboGImBouELk9wD_uZToIk',
    appId: '1:451301866816:ios:87568fd99a95d691e7cea5',
    messagingSenderId: '451301866816',
    projectId: 'examamst2pg5',
    storageBucket: 'examamst2pg5.appspot.com',
    androidClientId: '451301866816-tbkcbjrlt5lc7i1eu9gjarpv5v2ggkqk.apps.googleusercontent.com',
    iosClientId: '451301866816-6ai81hppc77731frnt5il30f8ipjj0bn.apps.googleusercontent.com',
    iosBundleId: 'com.example.examen2moraGuzmanMora',
  );
}
