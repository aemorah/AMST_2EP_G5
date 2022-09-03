
import 'package:examen2mora_guzman_mora/ui/views/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../services/firebase_services.dart';

class CerrarSesion extends StatefulWidget {
  const CerrarSesion({Key? key}) : super(key: key);
  @override
  _CerrarSesion createState() => _CerrarSesion();
}

class _CerrarSesion extends State<CerrarSesion> {
  @override
  void initState() {
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5C1DC),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 350,
              height: 75,
              child: ElevatedButton(
                child: Text("Cerrar Session"),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(top: 16, bottom: 16),
                    textStyle: TextStyle(fontSize: 24, color: Colors.white),
                    primary: Color(0xFFD0268C),
                    shape: RoundedRectangleBorder(borderRadius:
                    BorderRadius.circular(30))),
                onPressed: () async {
                  await FirebaseServices().googleSignOut();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginView()));
                  },
              ),
            ),
          ],
        ),
      ),
    );
  }
}