import 'package:codeone/pages/quali_sala.dart';
import 'package:flutter/material.dart';
import 'package:codeone/style/app_style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class QualiEscola extends StatefulWidget {
  const QualiEscola({Key? key}) : super(key: key);

  @override
  State<QualiEscola> createState() => _QualiEscolaState();
}

class _QualiEscolaState extends State<QualiEscola> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            width: 120,
            height: 60,
            child: Image.asset('assets/images/logo-educacao.png',),
          ),
          backgroundColor: AppStyle.secondColor,
          elevation: 0,
          actions: [

            IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none_outlined,
              size: 25,
              color: Colors.white,
            ),
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.person,
              size: 25,
              color: Colors.white,
            ),
            ),
          ],
        ),
        backgroundColor: AppStyle.mainColor,
        body: Stack(
          children: [
            Container(
              height: 15,
              decoration: BoxDecoration(
                  color: AppStyle.secondColor,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30),),
                  boxShadow: [
                    BoxShadow(
                        color: AppStyle.shadowMainColor,
                        spreadRadius: 2,
                        blurRadius: 1,
                        offset: Offset(0.0, 2.0)
                    )
                  ]
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, left: 20),
              child: Text("Classificação",
                style: GoogleFonts.roboto(
                    color: Color(0xff403B91),
                    fontSize: 18,
                    fontWeight: FontWeight.w400
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 60, left: 105),
              child: Row(
                children: [
                  TextButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(AppStyle.titleColor)
                      ),
                      onPressed: () {},
                      child: Text("Escola")),
                  TextButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(AppStyle.titleColor)
                      ),
                      onPressed: () {},
                      child: Text("Série")),
                  TextButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(AppStyle.titleColor)
                      ),
                      onPressed: () => Navigator.push(context,
                          PageTransition(child: QualiSala(),
                              type: PageTransitionType.fade)),
                      child: Text("Sala")),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 120, left: 30),
              child: SizedBox(
                height: 570,
                width: 350,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
}
