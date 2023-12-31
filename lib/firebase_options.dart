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
    apiKey: 'AIzaSyBkGqUiZVE095i8qHMWPS3cn7GFIt32l4k',
    appId: '1:251512652506:web:2514fd97646d031a0b5be3',
    messagingSenderId: '251512652506',
    projectId: 'notes-65d4e',
    authDomain: 'notes-65d4e.firebaseapp.com',
    databaseURL: 'https://notes-65d4e-default-rtdb.firebaseio.com',
    storageBucket: 'notes-65d4e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAiZio7-t5clF89FVqCgRMMPYbdri9wQ48',
    appId: '1:251512652506:android:b0b094b163bffa8d0b5be3',
    messagingSenderId: '251512652506',
    projectId: 'notes-65d4e',
    databaseURL: 'https://notes-65d4e-default-rtdb.firebaseio.com',
    storageBucket: 'notes-65d4e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBCRtxTFdC1S2fw3iGQ-9P5IPaD5cc23kA',
    appId: '1:251512652506:ios:5f61643ec2828c060b5be3',
    messagingSenderId: '251512652506',
    projectId: 'notes-65d4e',
    databaseURL: 'https://notes-65d4e-default-rtdb.firebaseio.com',
    storageBucket: 'notes-65d4e.appspot.com',
    iosClientId: '251512652506-d6lq1bsb538en2k45hjsdg1veeru5uu7.apps.googleusercontent.com',
    iosBundleId: 'com.example.firenote',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBCRtxTFdC1S2fw3iGQ-9P5IPaD5cc23kA',
    appId: '1:251512652506:ios:eb674e6e89b293800b5be3',
    messagingSenderId: '251512652506',
    projectId: 'notes-65d4e',
    databaseURL: 'https://notes-65d4e-default-rtdb.firebaseio.com',
    storageBucket: 'notes-65d4e.appspot.com',
    iosClientId: '251512652506-2nle2oon927j93h20pmtlc3u7a7mq6s1.apps.googleusercontent.com',
    iosBundleId: 'com.example.firenote.RunnerTests',
  );
}
