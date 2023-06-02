import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDx8BtJZUExuPp8A6ux4FryZoV0OV-K7zM",
            authDomain: "southsl.firebaseapp.com",
            projectId: "southsl",
            storageBucket: "southsl.appspot.com",
            messagingSenderId: "274384300954",
            appId: "1:274384300954:web:44d9aca228e486598d6823"));
  } else {
    await Firebase.initializeApp();
  }
}
