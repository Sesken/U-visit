import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:uvisitfinal/firebase_options.dart';
import 'package:uvisitfinal/splash-screen.dart';
import 'package:uvisitfinal/utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false, // Remove the debug banner
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SplashScreen(),
        ),
      ),
    );
  }
}
