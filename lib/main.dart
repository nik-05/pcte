import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pcte_events/features/onboarding/welcome_screen.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if(kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyA5NgEmp-j4wI9DRJM-dW9qSy_VswXGrM8",
        authDomain: "pcte-events.firebaseapp.com",
        databaseURL: "https://pcte-events-default-rtdb.asia-southeast1.firebasedatabase.app",
        projectId: "pcte-events",
        storageBucket: "pcte-events.appspot.com",
        messagingSenderId: "739076365807",
        appId: "1:739076365807:web:5742fb751f11e1822e2a1a",
        measurementId: "G-69Y9VKJX53"
      ),
    );
  } else {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: const WelcomeScreen(),
    );
  }
}
