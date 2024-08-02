import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDR8rPrYdDPc77-EDhIvWWIDFPhiOVHtfA",
            authDomain: "flutterflowpoc3.firebaseapp.com",
            projectId: "flutterflowpoc3",
            storageBucket: "flutterflowpoc3.appspot.com",
            messagingSenderId: "150445138450",
            appId: "1:150445138450:web:bd953977da11eaad042ecb"));
  } else {
    await Firebase.initializeApp();
  }
}
