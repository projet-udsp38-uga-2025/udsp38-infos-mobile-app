import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:udsp_38/styles/themes.dart';
import 'package:udsp_38/views/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await _setupFCM();
  runApp(MyApp());
}

Future<void> _setupFCM() async {
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  // Request permission (Android s13+ and iOS)
  await messaging.requestPermission();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomeScreen(),
        theme: AppTheme.lightTheme,
        title: 'UDSP 38',
        debugShowCheckedModeBanner: false,
    );
  }
}