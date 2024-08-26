

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'pages/welcome.dart';

Future() async{
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(options: const FirebaseOptions(apiKey:"AIzaSyBEibknuth2oMx2xgMCyUNBfguwByc6Eoo" , appId:"mydiary-5f4b3.firebaseapp.com" , messagingSenderId:"689346442642", projectId: "mydiary-5f4b3")
    );
    await Firebase.initializeApp();
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage()
    );
  }
}
