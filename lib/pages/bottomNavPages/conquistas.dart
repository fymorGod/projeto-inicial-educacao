import 'package:codeone/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Conquistas extends StatefulWidget {
  const Conquistas({Key? key}) : super(key: key);

  @override
  State<Conquistas> createState() => _ConquistasState();
}

class _ConquistasState extends State<Conquistas> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
          IconButton(onPressed: (){}, icon: Icon(Icons.search,
            size: 25,
            color: Colors.white,
          ),
          ),

          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none_outlined,
            size: 25,
            color: Colors.white,
          ),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.person,
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
            height: 15,
            decoration: BoxDecoration(
              color: AppStyle.secondColor,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: AppStyle.shadowMainColor,
                    spreadRadius: 2,
                    blurRadius: 1,
                    offset: Offset(0.0, 2.0)
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text(
              "Conquistas",
              style: GoogleFonts.roboto(
                color: AppStyle.titleColor,
                fontSize: 22,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: AppStyle.shadowMainColor,
                      spreadRadius: .5,
                      blurRadius: .5,
                      offset: Offset(0.0, 1.0)
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                children: [
                  Container(
                    child: Image.asset("assets/images/filosofo.png",
                    height: 110,
                    ),
                  ),
                  SizedBox(
                    width: 20.0
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Row(
                       children: [
                         Container(
                           child: Text(
                               "Filósofo 3",
                             style: GoogleFonts.roboto(
                               fontSize: 22,
                               fontWeight: FontWeight.w700,
                               color: Color(0xFF364FC7)
                             ),
                           ),
                         ),
                         SizedBox(width: 65),
                         Container(
                           margin: EdgeInsets.only(bottom: 20.0),
                           width: 50,
                           padding: EdgeInsets.only(left: 5.0, right: 4.0),
                           decoration: BoxDecoration(
                               color: AppStyle.labelFilosofo,
                               borderRadius: BorderRadius.circular(8)
                           ),
                           child: Text(
                               "4.75/6",
                             style: GoogleFonts.roboto(
                               color: Colors.white
                             ),
                           ),
                         )
                       ],
                     ),
                      SizedBox(height: 10),
                      Container(
                        child: Text(
                          textAlign: TextAlign.start,
                          "Matenha a média maior\nque 6 em filosofia",
                          style: GoogleFonts.roboto(
                            color: Colors.black38
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        width: 210,
                        child: LinearPercentIndicator(
                          padding: EdgeInsets.zero,
                          animation: true,
                          animationDuration: 1000,
                          lineHeight: 18,
                          percent: 0.5,
                          progressColor: Colors.indigoAccent,
                          backgroundColor: Colors.indigo.shade200,
                          barRadius: Radius.circular(20),
                          center: Text("50%",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white
                          ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: AppStyle.shadowMainColor,
                        spreadRadius: .5,
                        blurRadius: .5,
                        offset: Offset(0.0, 1.0)
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                children: [
                  Container(
                    child: Image.asset("assets/images/sabe-tudo.png",
                      height: 110,
                    ),
                  ),
                  SizedBox(
                      width: 20.0
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Text(
                              "Sabe tudo",
                              style: GoogleFonts.roboto(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFFEF8729)
                              ),
                            ),
                          ),
                          SizedBox(width: 65),
                          Container(
                            margin: EdgeInsets.only(bottom: 20.0),
                            width: 50,
                            padding: EdgeInsets.only(left: 5.0, right: 4.0),
                            decoration: BoxDecoration(
                                color: Color(0xFFEF8729),
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Text(
                              "4.75/6",
                              style: GoogleFonts.roboto(
                                  color: Colors.white
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Text(
                          textAlign: TextAlign.start,
                          "Acerte todas as questões na primeira\ntentativa em 5 atividades diferentes",
                          style: GoogleFonts.roboto(
                              color: Colors.black38,
                              fontSize: 12
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        width: 210,
                        child: LinearPercentIndicator(
                          padding: EdgeInsets.zero,
                          animation: true,
                          animationDuration: 1000,
                          lineHeight: 18,
                          percent: 0.65,
                          progressColor: Color(0xFFEF8729),
                          backgroundColor: Colors.orange.shade200,
                          barRadius: Radius.circular(20),
                          center: Text("65%",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: AppStyle.shadowMainColor,
                        spreadRadius: .5,
                        blurRadius: .5,
                        offset: Offset(0.0, 1.0)
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                children: [
                  Container(
                    child: Image.asset("assets/images/mestre-geografia.png",
                      height: 110,
                    ),
                  ),
                  SizedBox(
                      width: 20.0
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Text(
                              "Mestre em Geografia",
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF43D9A2)
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            margin: EdgeInsets.only(bottom: 20.0),
                            width: 50,
                            padding: EdgeInsets.only(left: 5.0, right: 4.0),
                            decoration: BoxDecoration(
                                color: Color(0xFF43D9A2),
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Text(
                              "4.75/6",
                              style: GoogleFonts.roboto(
                                  color: Colors.white
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Text(
                          textAlign: TextAlign.start,
                          "Acerte todas as questões\nda matéria de geografia",
                          style: GoogleFonts.roboto(
                              color: Colors.black38
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        width: 210,
                        child: LinearPercentIndicator(
                          padding: EdgeInsets.zero,
                          animation: true,
                          animationDuration: 1000,
                          lineHeight: 18,
                          percent: 0.3,
                          progressColor: Color(0xFF43D9A2),
                          backgroundColor: Colors.green.shade200,
                          barRadius: Radius.circular(20),
                          center: Text("30%",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: AppStyle.shadowMainColor,
                        spreadRadius: .5,
                        blurRadius: .5,
                        offset: Offset(0.0, 1.0)
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                children: [
                  Container(
                    child: Image.asset("assets/images/rubi.png",
                      height: 110,
                    ),
                  ),
                  SizedBox(
                      width: 20.0
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Text(
                              "Rubi",
                              style: GoogleFonts.roboto(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFFC13232)
                              ),
                            ),
                          ),
                          SizedBox(width: 110),
                          Container(
                            margin: EdgeInsets.only(bottom: 20.0),
                            width: 50,
                            padding: EdgeInsets.only(left: 5.0, right: 4.0),
                            decoration: BoxDecoration(
                                color: Color(0xFFC13232),
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Text(
                              "4.75/6",
                              style: GoogleFonts.roboto(
                                  color: Colors.white
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Text(
                          textAlign: TextAlign.start,
                          "Alcance a divisão Rubi",
                          style: GoogleFonts.roboto(
                              color: Colors.black38
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        width: 210,
                        child: LinearPercentIndicator(
                          padding: EdgeInsets.zero,
                          animation: true,
                          animationDuration: 1000,
                          lineHeight: 18,
                          percent: 0.8,
                          progressColor: Color(0xFFC13232),
                          backgroundColor: Colors.red.shade200,
                          barRadius: Radius.circular(20),
                          center: Text("80%",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
