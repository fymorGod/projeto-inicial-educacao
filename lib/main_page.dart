import 'package:codeone/pages/bar_item_page.dart';
import 'package:codeone/pages/login_page.dart';
import 'package:codeone/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState(){
    super.initState();
    tokenExist().then((value) {
      if(value){
        Navigator.pushReplacement(
            context,
            PageTransition(child: BarItemPage(),
                type: PageTransitionType.fade,
                duration: const Duration(milliseconds: 10)
            )
        );
      } else {
        Navigator.pushReplacement(
            context,
            PageTransition(
                child: LoginPage(),
                type: PageTransitionType.fade,
                duration: const Duration(milliseconds: 10)
            )
        );
      }
    });
  }

  Future<bool> tokenExist() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if(sharedPreferences.getString('token') == null){
      return false;
    } else {
      return true;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
          decoration: BoxDecoration(
            color: AppStyle.secondColor
          ),
          child: Center(
            child: Image.asset("assets/images/logo-educacao.png"),
          ),
        ),
    );
  }
}

