import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../services/firebase_services.dart';

class Perfil extends StatefulWidget {
  const Perfil({Key? key}) : super(key: key);
  @override
  _Perfil createState() => _Perfil();
}

class _Perfil extends State<Perfil> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color :Color(0xFFF5C1DC),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: 200,
                    height: 200,
                    child: Image.network(FirebaseAuth.instance.currentUser!.photoURL!,width: 200,height: 200,fit: BoxFit.cover,),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Nombre:  "+"${FirebaseAuth.instance.currentUser!.displayName}",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Correo:  "+"${FirebaseAuth.instance.currentUser!.email}",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
          ),
        ),
    );
  }
}