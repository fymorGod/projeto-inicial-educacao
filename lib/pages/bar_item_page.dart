import 'package:codeone/pages/bottomNavPages/conquistas.dart';
import 'package:codeone/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:codeone/style/app_style.dart';
import 'package:codeone/pages/bottomNavPages/anotations_page.dart';
import 'package:codeone/pages/bottomNavPages/calander_page.dart';
import 'package:codeone/pages/bottomNavPages/classes_page.dart';
import 'package:codeone/pages/bottomNavPages/trophies_page.dart';

class BarItemPage extends StatefulWidget {
  const BarItemPage({Key? key}) : super(key: key);

  @override
  State<BarItemPage> createState() => _BarItemPageState();
}

class _BarItemPageState extends State<BarItemPage> {
  List pages = [
    HomePage(),
    AnotationPage(),
    ClassesPage(),
    Conquistas(),
    CalanderPage()
  ];

  int currentIndex = 0;

  void onTap(int index){
    setState((){
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 12,
        selectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        elevation: 0,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              height: 30,
              child: Image.asset('assets/images/home.png'),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Container(
                height: 30,
                child: Image.asset('assets/images/escrita.png'),
              ),
              label: "Anotações"),
          BottomNavigationBarItem(
            icon: Container(
              height: 30,
              child: Image.asset('assets/images/aulas.png'),
            ),
            label: "Aulas",

          ),
          BottomNavigationBarItem(
              icon: Container(
                height: 30,
                child: Image.asset('assets/images/trophy.png'),
              ),
              label: "Conquistas"
          ),
          BottomNavigationBarItem(
              icon: Container(
                height: 30,
                child: Image.asset('assets/images/calendar.png'),
              ),
              label: "Calendário"
          ),
        ],

        backgroundColor: AppStyle.bottomBarNavigation,
      ),
    );
  }
}
