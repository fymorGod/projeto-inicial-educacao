import 'package:codeone/pages/quali_escola.dart';
import 'package:codeone/pages/quali_page.dart';
import 'package:flutter/material.dart';
import 'package:codeone/style/app_style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class QualiSala extends StatefulWidget {
  const QualiSala({Key? key}) : super(key: key);

  @override
  State<QualiSala> createState() => _QualiSalaState();
}

class _QualiSalaState extends State<QualiSala> {
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
                      onPressed: () => Navigator.push(context,
                          PageTransition(child: QualiEscola(),
                              type: PageTransitionType.fade)),
                      child: Text("Escola")),
                  TextButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(AppStyle.titleColor)
                      ),
                      onPressed: () => Navigator.push(context,
                          PageTransition(child: QualiPage(),
                              type: PageTransitionType.fade)),
                      child: Text("Série")),
                  TextButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(AppStyle.titleColor)
                      ),
                      onPressed: () {},
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
            ),
            Container(
              padding: EdgeInsets.only(top: 120, left: 30),
              child: SizedBox(
                width: 350,
                height: 55,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Color(0xffEEBC4E),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15))
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top:130, left: 140),
              child: Text("Divisão Ouro", style: GoogleFonts.roboto(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500
              ),),
            ),
            Container(
              padding: EdgeInsets.only(top: 160, left: 140),
              child: Image.asset("assets/images/Grupo 554.png"),
            ),
            Container(
              padding: EdgeInsets.only(top: 173, left: 153),
              child: Image.asset("assets/images/foto.png", height: 98, width: 98,),
            ),
            Container(
              padding: EdgeInsets.only(top: 190, left: 210),
              child: Image.asset("assets/images/Grupo 301.png", height: 95, width: 95,),
            ),
            Container(
                padding: EdgeInsets.only(top: 215, left: 55),
                child: Text("Vinicius - 9º C", style: GoogleFonts.roboto(
                    color: Color(0xff4263EB)
                ),)
            ),
            Container(
              padding: EdgeInsets.only(top: 235, left: 75),
              child: Text("987", style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xff868E96)
              ),),
            ),
            Container(
                padding: EdgeInsets.only(top: 277, left: 50),
                child: Image.asset('assets/images/Grupo 554.png', width: 130, height: 130,)
            ),
            Container(
                padding: EdgeInsets.only(top: 280, left: 65),
                child: Image.asset('assets/images/4.png', width: 100, height: 100,)
            ),
            Container(
                padding: EdgeInsets.only(top: 420, left: 75),
                child: Text("Maria - 9ª A", style: GoogleFonts.roboto(
                    color: Color(0xff4263EB)
                ),)
            ),
            Container(
              padding: EdgeInsets.only(top: 440, left: 100),
              child: Text("871", style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xff868E96)
              ),),
            ),
            Container(
                padding: EdgeInsets.only(top: 300, left: 230),
                child: Image.asset('assets/images/Grupo 554.png', width: 110, height: 110,)
            ),
            Container(
                padding: EdgeInsets.only(top: 307, left: 250),
                child: Image.asset('assets/images/foto 4.png', width: 70, height: 70,)
            ),
            Container(
                padding: EdgeInsets.only(top: 340, left: 295),
                child: Image.asset('assets/images/Grupo 307.png', width: 50, height: 50,)
            ),
            Container(
                padding: EdgeInsets.only(top: 420, left: 250),
                child: Text("Ana - 9ª D", style: GoogleFonts.roboto(
                    color: Color(0xff4263EB)
                ),)
            ),
            Container(
              padding: EdgeInsets.only(top: 440, left: 270),
              child: Text("674", style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xff868E96)
              ),),
            ),
            Container(
                padding: EdgeInsets.only(top: 470, left: 40),
                child: Text(" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -", style: GoogleFonts.roboto(
                    color: Color(0xff4263EB)
                ),)
            ),
            Container(
              padding: EdgeInsets.only(top: 480, left: 30),
              child: SizedBox(
                width: 350,
                height: 210,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Color(0xff4263EB),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))
                  ),
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 490, left: 140),
                child: Text(" Minha Posição", style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  fontSize: 16
                ),)
            ),
            Container(
              padding: EdgeInsets.only(top: 540, left: 50),
              child: Image.asset("assets/images/Grupo 301.png", height: 95, width: 95,),
            ),
            Container(
                padding: EdgeInsets.only(top: 555, left: 150),
                child: Text("Parabens!!", style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                ),)
            ),
            Container(
                padding: EdgeInsets.only(top: 580, left: 150),
                child: Text("Você esta em primeiro\n" "lugar, continue assim!", style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16
                ),)
            ),




          ],
        )
    );;
  }
}
