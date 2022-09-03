import 'package:examen2mora_guzman_mora/ui/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Examapp extends StatefulWidget {
  const Examapp({Key? key}) : super(key: key);
  @override
  State<Examapp> createState() => _Examapp();
}
class _Examapp extends State<Examapp> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: AppColors.mainColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: Brightness.light),
      initialRoute: '/',
      onGenerateRoute: Routes.generateRoute,
    );

  }
}