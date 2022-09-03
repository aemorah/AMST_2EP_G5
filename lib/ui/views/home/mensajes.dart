

import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class Mensaje extends StatefulWidget {
  const Mensaje({Key? key}) : super(key: key);
  @override
  _Mensaje createState() => _Mensaje();
}

class _Mensaje extends State<Mensaje> {
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
            child: Image.asset('assets/images/Mensaje.jpg',height: 100,width: 100, )
        ),
    );
  }
}