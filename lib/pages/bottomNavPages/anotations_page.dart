import 'package:auto_size_text/auto_size_text.dart';
import 'package:codeone/pages/anotations/create_anotation.dart';
import 'package:codeone/pages/bottomNavPages/perfil_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../../style/app_style.dart';

class AnotationPage extends StatefulWidget {
  const AnotationPage({Key? key}) : super(key: key);

  @override
  State<AnotationPage> createState() => _AnotationPageState();
}

class _AnotationPageState extends State<AnotationPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
            IconButton(onPressed: () => Navigator.push(context, PageTransition(
                child: PerfilPage(),
                type: PageTransitionType.fade,
                duration: const Duration(milliseconds: 10)
            )), icon: Icon(Icons.person,
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
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
            child: AutoSizeText(
              "Minhas Anotações",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 22,
                color: AppStyle.titleColor
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
                ),
                padding: EdgeInsets.only(left: 20.0, top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "O triângulo é uma figura 2D com 3\nlados",
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        color: Colors.black54
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 80),
                        TextButton(
                            onPressed: (){},
                            child: Container(
                              child: Text("Matemática",
                                style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  color: Color(0xFF4263EB)
                                )
                              ),
                            ),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            primary: Color(0xFF4263EB)
                          ),
                        ),
                        TextButton(
                          onPressed: (){},
                          child: Container(
                            child: Text("Trigonometria",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    color: Color(0xFF4263EB)
                                )
                            ),
                          ),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              primary: Color(0xFF4263EB)
                          ),
                        ),
                        TextButton(
                          onPressed: (){},
                          child: Container(
                            child: Text("Aula 1",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    color: Color(0xFF4263EB)
                                )
                            ),
                          ),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              primary: Color(0xFF4263EB)
                          ),
                        )
                      ],
                    )
                  ],
                )
              ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        focusColor: AppStyle.secondColor,
        backgroundColor: AppStyle.secondColor,
        elevation: 2,
        onPressed: (){
          Navigator.push(context, PageTransition(
              child: CreateAnotation(),
              type:  PageTransitionType.fade,
              duration: const Duration(milliseconds: 10)
          )
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
