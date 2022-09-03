

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:examen2mora_guzman_mora/ui/views/home/cerrarsesion.dart';
import 'package:examen2mora_guzman_mora/ui/views/home/mensajes.dart';
import 'package:examen2mora_guzman_mora/ui/views/home/perfil.dart';
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class HomeView extends StatefulWidget {
  _HomeView createState() => _HomeView();
}
class _HomeView extends State<HomeView> {
  int _currentPage = 1;
  PageController? _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage,
        keepPage: true);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomBar(),
      body: PageView(
        controller: _pageController,
        children: [Perfil(),Mensaje(),CerrarSesion()],
        onPageChanged: (int index) {
          setState(() {
            _currentPage = index;
          });
        },
      ),
    );
  }
  CurvedNavigationBar _bottomBar() {
    return CurvedNavigationBar(
      index: _currentPage,
      color: AppColors.primaryColor,
      backgroundColor: AppColors.background,
      animationDuration: const Duration(milliseconds: 300),
      items: const <Widget>[
        Icon(Icons.message_rounded, size: 30, color:
        AppColors.text_dark,),
        Icon(Icons.contact_mail_outlined, size: 30, color: AppColors.text_dark,),
        Icon(Icons.logout, size: 30, color:
        AppColors.text_dark,),
      ],
      onTap: (int index) {
        setState(() {
          _currentPage = index;
          _pageController!.animateToPage(index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease);
        });
      },
    );
  }
}