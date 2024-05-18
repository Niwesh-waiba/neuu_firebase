import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:neuu_firebase/authentication/login_screen.dart';
import 'package:neuu_firebase/main_screens/home_screen.dart';
// import 'package:neuu_firebase/main_screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC4EbI2GWSNQRx-fuzuStdi2xCbfYvlmSw",
            authDomain: "neuuadminwebportal.firebaseapp.com",
            projectId: "neuuadminwebportal",
            storageBucket: "neuuadminwebportal.appspot.com",
            messagingSenderId: "789001339261",
            appId: "1:789001339261:web:622d4df29bcda7836f0c14",
            measurementId: "G-7FZRXM15DR"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin Web Portal',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
