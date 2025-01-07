import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/app/app.dart';
import 'package:travel_app/di/injectable.dart';
import 'package:travel_app/firebase_options.dart';

Future<void> runAndInitialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
       options: DefaultFirebaseOptions.currentPlatform,
  );
   initializeDependencies();
  runApp(const TravelApp());
}