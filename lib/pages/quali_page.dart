import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../style/app_style.dart';

class QualiPage extends StatefulWidget {
  const QualiPage({Key? key}) : super(key: key);

  @override
  State<QualiPage> createState() => _QualiPageState();
}


class _QualiPageState extends State<QualiPage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

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
      body: LayoutBuilder(
          builder: (context,constraints) {
            if (constraints.maxWidth < 400) {
              return Stack(
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
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03,
                        left: 20),
                    child: Text("Classificação",
                      style: GoogleFonts.roboto(
                          color: Color(0xff403B91),
                          fontSize: 18,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                  PageView(
                    controller: _controller,
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.035,
                                left: MediaQuery.of(context).size.width * 0.5) ,
                            child: AnimatedTextKit(
                              animatedTexts: [
                                FadeAnimatedText('Escola',
                                  textStyle: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff403B91),
                                  ),
                                ),
                                ScaleAnimatedText(
                                    'Escola',
                                    duration: Duration(milliseconds: 4000)
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.08,
                                left: MediaQuery.of(context).size.width * 0.025) ,
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.75,
                              width: MediaQuery.of(context).size.width * 0.95,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.080,
                                left: MediaQuery.of(context).size.width * 0.025),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.95,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Color(0xffEEBC4E),
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15))
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.095,
                                left: MediaQuery.of(context).size.width * 0.35),
                            child: Text("Divisão Ouro", style: GoogleFonts.roboto(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.13,
                                left: MediaQuery.of(context).size.width * 0.35),
                            child: Image.asset("assets/images/Grupo 554.png"),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.145,
                                left: MediaQuery.of(context).size.width * 0.385),
                            child: Image.asset("assets/images/foto 3.png", height: 98, width: 98,),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.177,
                                left: MediaQuery.of(context).size.width * 0.555),
                            child: Image.asset("assets/images/Grupo 301.png", height: 95, width: 95,),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .20,
                                  left: MediaQuery.of(context).size.width * 0.1),
                              child: Text("Carla - 9º B", style: GoogleFonts.roboto(
                                  color: Color(0xff4263EB)
                              ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .23,
                                left: MediaQuery.of(context).size.width * 0.15),
                            child: Text("1249", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff868E96)
                            ),),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .28,
                                  left: MediaQuery.of(context).size.width * 0.04),
                              child: Image.asset('assets/images/Grupo 554.png', width: 130, height: 130,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .285,
                                  left: MediaQuery.of(context).size.width * 0.085),
                              child: Image.asset('assets/images/4.png', width: 100, height: 100,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .47,
                                  left: MediaQuery.of(context).size.width * 0.1),
                              child: Text("Maria - 8ª A", style: GoogleFonts.roboto(
                                  color: Color(0xff4263EB)
                              ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .50,
                                left: MediaQuery.of(context).size.width * 0.17),
                            child: Text("1236", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff868E96)
                            ),),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .33,
                                  left: MediaQuery.of(context).size.width * 0.6),
                              child: Image.asset('assets/images/Grupo 554.png', width: 110, height: 110,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .340,
                                  left: MediaQuery.of(context).size.width * 0.653),
                              child: Image.asset('assets/images/foto 4.png', width: 70, height: 70,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .390,
                                  left: MediaQuery.of(context).size.width * 0.8),
                              child: Image.asset('assets/images/Grupo 307.png', width: 50, height: 50,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .490,
                                  left: MediaQuery.of(context).size.width * 0.66),
                              child: Text("Ana - 7ª D", style: GoogleFonts.roboto(
                                  color: Color(0xff4263EB)
                              ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .515,
                                left: MediaQuery.of(context).size.width * 0.715),
                            child: Text("1100", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff868E96)
                            ),),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.545,
                                left: MediaQuery.of(context).size.width * 0.025),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.286,
                              width: MediaQuery.of(context).size.width * 0.95,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Color(0xff4263EB),
                                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(15), bottomLeft: Radius.circular(15))
                                ),
                              ),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .55,
                                  left: MediaQuery.of(context).size.width * .02
                              ),
                              child: DottedLine(
                                lineLength: 340,
                                dashColor: Colors.white,
                              )),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .59,
                                  left: MediaQuery.of(context).size.width * .35),
                              child: Text(" Minha Posição", style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500
                              ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .622,
                                left: MediaQuery.of(context).size.width * .04),
                            child: Image.asset("assets/images/Grupo 301.png", width: 130, height: 120,),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .68,
                                left: MediaQuery.of(context).size.width * .40),
                            child: Text("Parabéns!!", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 18),),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .72,
                                left: MediaQuery.of(context).size.width * .40),
                            child: Text("Você esta em primeiro lugar, continue assim!", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                color: Colors.white
                            ),),
                          ),

                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.035,
                                left: MediaQuery.of(context).size.width * 0.5) ,
                            child: AnimatedTextKit(
                              animatedTexts: [
                                FadeAnimatedText('Série',
                                  textStyle: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff403B91),
                                  ),
                                ),
                                ScaleAnimatedText(
                                    'Série',
                                    duration: Duration(milliseconds: 4000)
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.08,
                                left: MediaQuery.of(context).size.width * 0.025) ,
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.75,
                              width: MediaQuery.of(context).size.width * 0.95,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.080,
                                left: MediaQuery.of(context).size.width * 0.025),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.95,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Color(0xffEEBC4E),
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15))
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.09,
                                left: MediaQuery.of(context).size.width * 0.35),
                            child: Text("Divisão Ouro", style: GoogleFonts.roboto(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.13,
                                left: MediaQuery.of(context).size.width * 0.35),
                            child: Image.asset("assets/images/Grupo 554.png"),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.145,
                                left: MediaQuery.of(context).size.width * 0.385),
                            child: Image.asset("assets/images/foto 3.png", height: 98, width: 98,),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.175,
                                left: MediaQuery.of(context).size.width * 0.555),
                            child: Image.asset("assets/images/Grupo 301.png", height: 95, width: 95,),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .20,
                                  left: MediaQuery.of(context).size.width * 0.1),
                              child: Text("Carla - 9º B", style: GoogleFonts.roboto(
                                  color: Color(0xff4263EB)
                              ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .225,
                                left: MediaQuery.of(context).size.width * 0.15),
                            child: Text("1249", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff868E96)
                            ),),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .28,
                                  left: MediaQuery.of(context).size.width * 0.04),
                              child: Image.asset('assets/images/Grupo 554.png', width: 130, height: 130,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .285,
                                  left: MediaQuery.of(context).size.width * 0.085),
                              child: Image.asset('assets/images/4.png', width: 100, height: 100,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .47,
                                  left: MediaQuery.of(context).size.width * 0.1),
                              child: Text("Maria - 8ª A", style: GoogleFonts.roboto(
                                  color: Color(0xff4263EB)
                              ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .50,
                                left: MediaQuery.of(context).size.width * 0.17),
                            child: Text("1236", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff868E96)
                            ),),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .33,
                                  left: MediaQuery.of(context).size.width * 0.6),
                              child: Image.asset('assets/images/Grupo 554.png', width: 110, height: 110,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .345,
                                  left: MediaQuery.of(context).size.width * 0.653),
                              child: Image.asset('assets/images/foto 4.png', width: 70, height: 70,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .395,
                                  left: MediaQuery.of(context).size.width * 0.8),
                              child: Image.asset('assets/images/Grupo 307.png', width: 50, height: 50,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .485,
                                  left: MediaQuery.of(context).size.width * 0.66),
                              child: Text("Ana - 7ª D", style: GoogleFonts.roboto(
                                  color: Color(0xff4263EB)
                              ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .51,
                                left: MediaQuery.of(context).size.width * 0.715),
                            child: Text("1100", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff868E96)
                            ),),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .55,
                                  left: MediaQuery.of(context).size.width * .022
                              ),
                              child: DottedLine(
                                lineLength: 340,
                                dashColor: AppStyle.titleColor,
                              )),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .57,
                                  left: MediaQuery.of(context).size.width * .35),
                              child: Text(" Minha Posição", style: GoogleFonts.roboto(
                                  color: Color(0xff403B91),
                                  fontWeight: FontWeight.w500
                              ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .62,
                                left: MediaQuery.of(context).size.width * .13),
                            child: Image.asset("assets/images/Grupo 554.png", width: 120, height: 120,),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .603,
                                left: MediaQuery.of(context).size.width * .115),
                            child: Image.asset("assets/images/eu.png", width: 130, height: 120,),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .655,
                                left: MediaQuery.of(context).size.width * .035),
                            width: 43,
                            height: 43,
                            padding: EdgeInsets.only(left: 150),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xff4263EB)
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .670,
                                left: MediaQuery.of(context).size.width * .059),
                            child: Text("06º", style: GoogleFonts.roboto(color: Colors.white, fontSize: 17),),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .65,
                                left: MediaQuery.of(context).size.width * .50),
                            child: Text("Vinicius - 9º C", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff4263EB),
                                fontSize: 18),),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .69,
                                left: MediaQuery.of(context).size.width * .51),
                            child: Text("Pontuação:", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff4263EB)
                            ),),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .69,
                                left: MediaQuery.of(context).size.width * .75),
                            child: Text("987", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff868E96)
                            ),),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.035,
                                left: MediaQuery.of(context).size.width * 0.5) ,
                            child: AnimatedTextKit(
                              animatedTexts: [
                                FadeAnimatedText('Sala',
                                  textStyle: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff403B91),
                                  ),
                                ),
                                ScaleAnimatedText(
                                    'Sala',
                                    duration: Duration(milliseconds: 4000)
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.08,
                                left: MediaQuery.of(context).size.width * 0.025) ,
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.75,
                              width: MediaQuery.of(context).size.width * 0.95,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.080,
                                left: MediaQuery.of(context).size.width * 0.025),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.95,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Color(0xffEEBC4E),
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15))
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.095,
                                left: MediaQuery.of(context).size.width * 0.35),
                            child: Text("Divisão Ouro", style: GoogleFonts.roboto(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.13,
                                left: MediaQuery.of(context).size.width * 0.35),
                            child: Image.asset("assets/images/Grupo 554.png"),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.145,
                                left: MediaQuery.of(context).size.width * 0.385),
                            child: Image.asset("assets/images/foto 3.png", height: 98, width: 98,),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.177,
                                left: MediaQuery.of(context).size.width * 0.555),
                            child: Image.asset("assets/images/Grupo 301.png", height: 95, width: 95,),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .20,
                                  left: MediaQuery.of(context).size.width * 0.1),
                              child: Text("Carla - 9º B", style: GoogleFonts.roboto(
                                  color: Color(0xff4263EB)
                              ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .23,
                                left: MediaQuery.of(context).size.width * 0.15),
                            child: Text("1249", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff868E96)
                            ),),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .28,
                                  left: MediaQuery.of(context).size.width * 0.04),
                              child: Image.asset('assets/images/Grupo 554.png', width: 130, height: 130,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .285,
                                  left: MediaQuery.of(context).size.width * 0.085),
                              child: Image.asset('assets/images/4.png', width: 100, height: 100,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .47,
                                  left: MediaQuery.of(context).size.width * 0.1),
                              child: Text("Maria - 8ª A", style: GoogleFonts.roboto(
                                  color: Color(0xff4263EB)
                              ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .50,
                                left: MediaQuery.of(context).size.width * 0.17),
                            child: Text("1236", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff868E96)
                            ),),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .33,
                                  left: MediaQuery.of(context).size.width * 0.6),
                              child: Image.asset('assets/images/Grupo 554.png', width: 110, height: 110,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .340,
                                  left: MediaQuery.of(context).size.width * 0.653),
                              child: Image.asset('assets/images/foto 4.png', width: 70, height: 70,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .390,
                                  left: MediaQuery.of(context).size.width * 0.8),
                              child: Image.asset('assets/images/Grupo 307.png', width: 50, height: 50,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .490,
                                  left: MediaQuery.of(context).size.width * 0.66),
                              child: Text("Ana - 7ª D", style: GoogleFonts.roboto(
                                  color: Color(0xff4263EB)
                              ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .515,
                                left: MediaQuery.of(context).size.width * 0.715),
                            child: Text("1100", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff868E96)
                            ),),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.545,
                                left: MediaQuery.of(context).size.width * 0.025),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.286,
                              width: MediaQuery.of(context).size.width * 0.95,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Color(0xff4263EB),
                                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(15), bottomLeft: Radius.circular(15))
                                ),
                              ),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .55,
                                  left: MediaQuery.of(context).size.width * .02
                              ),
                              child: DottedLine(
                                lineLength: 340,
                                dashColor: Colors.white,
                              )),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .59,
                                  left: MediaQuery.of(context).size.width * .35),
                              child: Text(" Minha Posição", style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500
                              ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .622,
                                left: MediaQuery.of(context).size.width * .04),
                            child: Image.asset("assets/images/Grupo 301.png", width: 130, height: 120,),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .68,
                                left: MediaQuery.of(context).size.width * .40),
                            child: Text("Parabéns!!", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 18),),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .72,
                                left: MediaQuery.of(context).size.width * .40),
                            child: Text("Você esta em primeiro lugar, continue assim!", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                color: Colors.white
                            ),),
                          ),

                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.8),
                    child: Center(
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        effect: JumpingDotEffect(
                          activeDotColor: AppStyle.titleColor,
                          dotColor: Colors.purple.shade100,
                          dotHeight: 10,
                          dotWidth: 10,
                          spacing: 20,
                          verticalOffset: 20,
                        ),
                      ),
                    ),
                  ),
                ],

              );
            } else {
              return Stack(
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
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03,
                        left: 20),
                    child: Text("Classificação",
                      style: GoogleFonts.roboto(
                          color: Color(0xff403B91),
                          fontSize: 18,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                  PageView(
                    controller: _controller,
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.08,
                                left: MediaQuery.of(context).size.width * 0.025) ,
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.75,
                              width: MediaQuery.of(context).size.width * 0.95,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.080,
                                left: MediaQuery.of(context).size.width * 0.025),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.95,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Color(0xffEEBC4E),
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15))
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.095,
                                left: MediaQuery.of(context).size.width * 0.35),
                            child: Text("Divisão Ouro", style: GoogleFonts.roboto(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.13,
                                left: MediaQuery.of(context).size.width * 0.35),
                            child: Image.asset("assets/images/Grupo 554.png"),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.145,
                                left: MediaQuery.of(context).size.width * 0.385),
                            child: Image.asset("assets/images/foto 3.png", height: 98, width: 98,),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.177,
                                left: MediaQuery.of(context).size.width * 0.555),
                            child: Image.asset("assets/images/Grupo 301.png", height: 95, width: 95,),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .20,
                                  left: MediaQuery.of(context).size.width * 0.1),
                              child: Text("Carla - 9º B", style: GoogleFonts.roboto(
                                  color: Color(0xff4263EB)
                              ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .23,
                                left: MediaQuery.of(context).size.width * 0.15),
                            child: Text("1249", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff868E96)
                            ),),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .28,
                                  left: MediaQuery.of(context).size.width * 0.04),
                              child: Image.asset('assets/images/Grupo 554.png', width: 130, height: 130,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .285,
                                  left: MediaQuery.of(context).size.width * 0.080),
                              child: Image.asset('assets/images/4.png', width: 100, height: 100,)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .301,
                                left: MediaQuery.of(context).size.width * 0.203),
                            child: Image.asset("assets/images/Grupo 301.png", height: 95, width: 95,),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .310,
                                left: MediaQuery.of(context).size.width * 0.220),
                            child: Image.asset('assets/images/Grupo 303.png',
                              height: 80,
                              width: 80,),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .44,
                                  left: MediaQuery.of(context).size.width * 0.1),
                              child: Text("Maria - 8ª A", style: GoogleFonts.roboto(
                                  color: Color(0xff4263EB)
                              ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .47,
                                left: MediaQuery.of(context).size.width * 0.17),
                            child: Text("1236", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff868E96)
                            ),),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .33,
                                  left: MediaQuery.of(context).size.width * 0.6),
                              child: Image.asset('assets/images/Grupo 554.png', width: 110, height: 110,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .340,
                                  left: MediaQuery.of(context).size.width * 0.645),
                              child: Image.asset('assets/images/foto 4.png', width: 70, height: 70,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .385,
                                  left: MediaQuery.of(context).size.width * 0.76),
                              child: Image.asset('assets/images/Grupo 307.png', width: 50, height: 50,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .460,
                                  left: MediaQuery.of(context).size.width * 0.66),
                              child: Text("Ana - 7ª D", style: GoogleFonts.roboto(
                                  color: Color(0xff4263EB)
                              ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .487,
                                left: MediaQuery.of(context).size.width * 0.715),
                            child: Text("1100", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff868E96)
                            ),),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.545,
                                left: MediaQuery.of(context).size.width * 0.025),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.286,
                              width: MediaQuery.of(context).size.width * 0.95,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Color(0xff4263EB),
                                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(15), bottomLeft: Radius.circular(15))
                                ),
                              ),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .55,
                                  left: MediaQuery.of(context).size.width * .02
                              ),
                              child: DottedLine(
                                lineLength: 390,
                                dashColor: Colors.white,
                              )),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .59,
                                  left: MediaQuery.of(context).size.width * .35),
                              child: Text(" Minha Posição", style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500
                              ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .622,
                                left: MediaQuery.of(context).size.width * .04),
                            child: Image.asset("assets/images/Grupo 301.png", width: 130, height: 120,),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .68,
                                left: MediaQuery.of(context).size.width * .40),
                            child: Text("Parabéns!!", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 18),),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .72,
                                left: MediaQuery.of(context).size.width * .40),
                            child: Text("Você esta em primeiro lugar, continue assim!", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                color: Colors.white
                            ),),
                          ),

                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.08,
                                left: MediaQuery.of(context).size.width * 0.025) ,
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.75,
                              width: MediaQuery.of(context).size.width * 0.95,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.080,
                                left: MediaQuery.of(context).size.width * 0.025),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.95,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Color(0xffEEBC4E),
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15))
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.09,
                                left: MediaQuery.of(context).size.width * 0.35),
                            child: Text("Divisão Ouro", style: GoogleFonts.roboto(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.13,
                                left: MediaQuery.of(context).size.width * 0.35),
                            child: Image.asset("assets/images/Grupo 554.png"),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.145,
                                left: MediaQuery.of(context).size.width * 0.385),
                            child: Image.asset("assets/images/foto 3.png", height: 98, width: 98,),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.175,
                                left: MediaQuery.of(context).size.width * 0.555),
                            child: Image.asset("assets/images/Grupo 301.png", height: 95, width: 95,),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .20,
                                  left: MediaQuery.of(context).size.width * 0.1),
                              child: Text("Carla - 9º B", style: GoogleFonts.roboto(
                                  color: Color(0xff4263EB)
                              ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .225,
                                left: MediaQuery.of(context).size.width * 0.15),
                            child: Text("1249", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff868E96)
                            ),),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .28,
                                  left: MediaQuery.of(context).size.width * 0.04),
                              child: Image.asset('assets/images/Grupo 554.png', width: 130, height: 130,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .284,
                                  left: MediaQuery.of(context).size.width * 0.080),
                              child: Image.asset('assets/images/4.png', width: 100, height: 100,)
                          ),

                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .301,
                                left: MediaQuery.of(context).size.width * 0.203),
                            child: Image.asset("assets/images/Grupo 301.png", height: 95, width: 95,),
                          ),

                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .310,
                                left: MediaQuery.of(context).size.width * 0.220),
                            child: Image.asset('assets/images/Grupo 303.png',
                              height: 80,
                              width: 80,),
                          ),


                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .45,
                                  left: MediaQuery.of(context).size.width * 0.1),
                              child: Text("Maria - 8ª A", style: GoogleFonts.roboto(
                                  color: Color(0xff4263EB)
                              ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .48,
                                left: MediaQuery.of(context).size.width * 0.17),
                            child: Text("1236", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff868E96)
                            ),),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .33,
                                  left: MediaQuery.of(context).size.width * 0.6),
                              child: Image.asset('assets/images/Grupo 554.png', width: 110, height: 110,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .340,
                                  left: MediaQuery.of(context).size.width * 0.647),
                              child: Image.asset('assets/images/foto 4.png', width: 70, height: 70,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .390,
                                  left: MediaQuery.of(context).size.width * 0.756),
                              child: Image.asset('assets/images/Grupo 307.png', width: 50, height: 50,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .455,
                                  left: MediaQuery.of(context).size.width * 0.66),
                              child: Text("Ana - 7ª D", style: GoogleFonts.roboto(
                                  color: Color(0xff4263EB)
                              ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .48,
                                left: MediaQuery.of(context).size.width * 0.715),
                            child: Text("1100", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff868E96)
                            ),),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .55,
                                  left: MediaQuery.of(context).size.width * .022
                              ),
                              child: DottedLine(
                                lineLength: 390,
                                dashColor: AppStyle.titleColor,
                              )),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .57,
                                  left: MediaQuery.of(context).size.width * .35),
                              child: Text(" Minha Posição", style: GoogleFonts.roboto(
                                  color: Color(0xff403B91),
                                  fontWeight: FontWeight.w500
                              ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .62,
                                left: MediaQuery.of(context).size.width * .13),
                            child: Image.asset("assets/images/Grupo 554.png", width: 120, height: 120,),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .603,
                                left: MediaQuery.of(context).size.width * .115),
                            child: Image.asset("assets/images/eu.png", width: 130, height: 120,),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .655,
                                left: MediaQuery.of(context).size.width * .035),
                            width: 43,
                            height: 43,
                            padding: EdgeInsets.only(left: 150),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xff4263EB)
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .670,
                                left: MediaQuery.of(context).size.width * .059),
                            child: Text("06º", style: GoogleFonts.roboto(color: Colors.white, fontSize: 17),),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .65,
                                left: MediaQuery.of(context).size.width * .50),
                            child: Text("Vinicius - 9º C", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff4263EB),
                                fontSize: 18),),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .69,
                                left: MediaQuery.of(context).size.width * .51),
                            child: Text("Pontuação:", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff4263EB)
                            ),),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .69,
                                left: MediaQuery.of(context).size.width * .75),
                            child: Text("987", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff868E96)
                            ),),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.08,
                                left: MediaQuery.of(context).size.width * 0.025) ,
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.75,
                              width: MediaQuery.of(context).size.width * 0.95,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.080,
                                left: MediaQuery.of(context).size.width * 0.025),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.95,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Color(0xffEEBC4E),
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15))
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.095,
                                left: MediaQuery.of(context).size.width * 0.35),
                            child: Text("Divisão Ouro", style: GoogleFonts.roboto(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.13,
                                left: MediaQuery.of(context).size.width * 0.35),
                            child: Image.asset("assets/images/Grupo 554.png"),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.145,
                                left: MediaQuery.of(context).size.width * 0.385),
                            child: Image.asset("assets/images/foto 3.png", height: 98, width: 98,),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.177,
                                left: MediaQuery.of(context).size.width * 0.555),
                            child: Image.asset("assets/images/Grupo 301.png", height: 95, width: 95,),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .20,
                                  left: MediaQuery.of(context).size.width * 0.1),
                              child: Text("Carla - 9º B", style: GoogleFonts.roboto(
                                  color: Color(0xff4263EB)
                              ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .23,
                                left: MediaQuery.of(context).size.width * 0.15),
                            child: Text("1249", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff868E96)
                            ),),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .28,
                                  left: MediaQuery.of(context).size.width * 0.04),
                              child: Image.asset('assets/images/Grupo 554.png', width: 130, height: 130,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .285,
                                  left: MediaQuery.of(context).size.width * 0.080),
                              child: Image.asset('assets/images/4.png', width: 100, height: 100,)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .301,
                                left: MediaQuery.of(context).size.width * 0.203),
                            child: Image.asset("assets/images/Grupo 301.png", height: 95, width: 95,),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .310,
                                left: MediaQuery.of(context).size.width * 0.220),
                            child: Image.asset('assets/images/Grupo 303.png',
                              height: 80,
                              width: 80,),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .44,
                                  left: MediaQuery.of(context).size.width * 0.1),
                              child: Text("Maria - 8ª A", style: GoogleFonts.roboto(
                                  color: Color(0xff4263EB)
                              ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .47,
                                left: MediaQuery.of(context).size.width * 0.17),
                            child: Text("1236", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff868E96)
                            ),),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .33,
                                  left: MediaQuery.of(context).size.width * 0.6),
                              child: Image.asset('assets/images/Grupo 554.png', width: 110, height: 110,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .340,
                                  left: MediaQuery.of(context).size.width * 0.645),
                              child: Image.asset('assets/images/foto 4.png', width: 70, height: 70,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .385,
                                  left: MediaQuery.of(context).size.width * 0.76),
                              child: Image.asset('assets/images/Grupo 307.png', width: 50, height: 50,)
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .460,
                                  left: MediaQuery.of(context).size.width * 0.66),
                              child: Text("Ana - 7ª D", style: GoogleFonts.roboto(
                                  color: Color(0xff4263EB)
                              ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .487,
                                left: MediaQuery.of(context).size.width * 0.715),
                            child: Text("1100", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff868E96)
                            ),),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.545,
                                left: MediaQuery.of(context).size.width * 0.025),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.286,
                              width: MediaQuery.of(context).size.width * 0.95,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Color(0xff4263EB),
                                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(15), bottomLeft: Radius.circular(15))
                                ),
                              ),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .55,
                                  left: MediaQuery.of(context).size.width * .02
                              ),
                              child: DottedLine(
                                lineLength: 390,
                                dashColor: Colors.white,
                              )),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .59,
                                  left: MediaQuery.of(context).size.width * .35),
                              child: Text(" Minha Posição", style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500
                              ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .622,
                                left: MediaQuery.of(context).size.width * .04),
                            child: Image.asset("assets/images/Grupo 301.png", width: 130, height: 120,),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .68,
                                left: MediaQuery.of(context).size.width * .40),
                            child: Text("Parabéns!!", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 18),),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .72,
                                left: MediaQuery.of(context).size.width * .40),
                            child: Text("Você esta em primeiro lugar, continue assim!", style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                color: Colors.white
                            ),),
                          ),

                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.8),
                    child: Center(
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        effect: JumpingDotEffect(
                          activeDotColor: AppStyle.titleColor,
                          dotColor: Colors.purple.shade100,
                          dotHeight: 10,
                          dotWidth: 10,
                          spacing: 20,
                          verticalOffset: 20,
                        ),
                      ),
                    ),
                  ),
                ],

              );
            }


          }
      ),
    );
  }
}