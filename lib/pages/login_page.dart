import 'package:codeone/pages/bar_item_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import '../style/app_style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.secondColor,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 50.0),
                child: Image.asset("assets/images/logo-educacao.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 10.0, left: 30.0, right: 30.0),
                child: TextField(
                  decoration: InputDecoration(

                    fillColor: Colors.white,
                    filled: true,
                    hintText: "753.145.574-01",
                    labelStyle: TextStyle(
                        fontSize: 24,
                        color: Colors.black26
                    ),
                    border: UnderlineInputBorder(
                        borderRadius:BorderRadius.circular(8.0)),
                  ),
                  obscureText: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 30.0, right: 30.0),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "*******************",
                    labelStyle: TextStyle(
                        fontSize: 28 ,
                        color: Colors.black26
                    ),
                    border: UnderlineInputBorder(
                        borderRadius:BorderRadius.circular(8.0)),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 20,
                child: Text(
                  "Esqueceu sua senha?",
                  style: GoogleFonts.roboto(
                      color: Colors.white70
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, PageTransition(
                      child: BarItemPage(),
                      type:  PageTransitionType.fade,
                      duration: const Duration(milliseconds: 10)
                  )
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 150.0, vertical: 20),
                  primary: Color(0xFF364FC7),
                ),
                child: Container(
                  child: Text("Entrar", style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18
                  ),),
                ),
              )
            ],
          )
      ),
    );
  }
}