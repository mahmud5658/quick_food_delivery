import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quick_food_delivery/pages/onboard.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyDexQTfHnveBysuy7Yt9zQ8NjFzjkq-gVM',
          appId: "1:522525425327:android:62df32d3a3aed9e15d1e5a",
          messagingSenderId: "522525425327",
          projectId: "fooddelivery-7bdcc"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Onboard(),
    );
  }
}
