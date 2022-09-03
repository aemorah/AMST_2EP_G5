import 'package:examen2mora_guzman_mora/ui/views/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'ui/examapp.dart';
import 'package:firebase_database/firebase_database.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Examapp());
}


