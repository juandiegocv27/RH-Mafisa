import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBJ6fswk3mUlpXUH98OIpgBT77Ov_L-Sjg",
            authDomain: "rhactual-198a2.firebaseapp.com",
            projectId: "rhactual-198a2",
            storageBucket: "rhactual-198a2.appspot.com",
            messagingSenderId: "248382408336",
            appId: "1:248382408336:web:421bc4a38f229fd38a3a15",
            measurementId: "G-P85Z2FSCK7"));
  } else {
    await Firebase.initializeApp();
  }
}
