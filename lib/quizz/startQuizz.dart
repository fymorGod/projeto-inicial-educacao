import 'package:codeone/widget/QuestionWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../pages/bottomNavPages/perfil_page.dart';
import '../style/app_style.dart';

class StartQuizz extends StatefulWidget {
  const StartQuizz({Key? key}) : super(key: key);

  @override
  State<StartQuizz> createState() => _StartQuizzState();
}

class _StartQuizzState extends State<StartQuizz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppStyle.secondColor,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 25,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none_outlined,
                size: 25,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () => Navigator.push(
                  context,
                  PageTransition(
                      child: PerfilPage(),
                      type: PageTransitionType.fade,
                      duration: const Duration(milliseconds: 10))),
              icon: Icon(
                Icons.person,
                size: 25,
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: AppStyle.mainColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: AppStyle.secondColor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                      color: AppStyle.shadowMainColor,
                      spreadRadius: 2,
                      blurRadius: 1,
                      offset: Offset(0.0, 2.0)),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Container(
                      child: Image.asset('assets/images/calculadora.png'),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Text(
                      "Matemática",
                      style:
                          GoogleFonts.roboto(fontSize: 22, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),


                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
             margin: EdgeInsets.only(left: 30),
              child: Text(
                "TRIGONOMETRIA",
                style: GoogleFonts.roboto(
                    fontSize: 18,
                    color: Colors.black54,
                    fontWeight: FontWeight.w700
                ),
                textAlign: TextAlign.left,
              ),
            ),

            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        Text("Atividade 1"),
                        SizedBox(height: 15),
                        Image.asset("assets/images/banner.png"),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Text("Pronto para praticar?",
                            style: GoogleFonts.roboto(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: AppStyle.secondColor
                            ),
                            ),
                            SizedBox(width: 50),
                            Text("2 questões",
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: AppStyle.secondColor
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 55,
                    child: TextButton(onPressed: (){
                          Navigator.push(context, PageTransition(
                              child: QuestionWidget(),
                              type:  PageTransitionType.fade,
                              duration: const Duration(milliseconds: 10)
                          )
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: AppStyle.secondColor,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                        ),
                        child: Text(
                          "Iniciar atividade",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white
                          ),)
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
