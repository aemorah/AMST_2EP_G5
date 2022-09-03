

import 'package:examen2mora_guzman_mora/ui/views/home/home_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../constants/colors.dart';
import '../../services/firebase_services.dart';
import '../../utils/util.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginView createState() => _LoginView();
}
class _LoginView extends State<LoginView> {
  String _imageBackground = "bg2.jpg";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.55),BlendMode.darken),
                image: AssetImage("assets/images/" + _imageBackground),
                fit: BoxFit.fill),
          ),
          child: Container(
              height: Util.sizeScreen(context: context).height,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 48, bottom: 40),
                child: Column( mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(height: 50),
                    const Text("Messenger App",
                      style: TextStyle(
                          fontSize: 54,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    Container(height: 100),
                    const Text(
                      "Ejemplo de aplicación",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    Container(height: 8),
                    const Text(
                      "Aplicación para el examen práctico de AMST G5",
                      style: TextStyle(fontSize: 24, color:
                      Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    Spacer(flex: 1),
                    Container(
                      width: double.infinity,
                      height: 75,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(top: 16, bottom: 16),
                            textStyle: TextStyle(fontSize: 24, color: Colors.white),
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius:
                            BorderRadius.circular(30))),
                        child: Text(
                          "Iniciar Sesión con Google", style: TextStyle(color: AppColors.text_light),
                        ),
                        onPressed:() async {
                          await FirebaseServices().signInWithGoogle();
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView()));
                      },
                      ),
                    ),
                    Container(height: 20),
                  ],
                ),
              )),
        ));
  }
}







