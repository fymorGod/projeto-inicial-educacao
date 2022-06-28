
import 'package:codeone/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'bottomNavPages/perfil_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState(){
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

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
      body: Container(
          width: size.width,
          height: size.height,
            child: Stack(
              children: [

                Container(
                  width: size.width,
                  height: size.height * 0.40,
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: AppStyle.shadowMainColor,
                            spreadRadius: 2,
                            blurRadius: 1,
                            offset: Offset(0.0, 2.0)
                        ),
                      ],
                      color: AppStyle.secondColor,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(28), bottomRight: Radius.circular(28))
                  ),
                  child:
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 100),
                      child: Image.asset('assets/images/banner.png'),
                    ),
                  ),
                ),
                Positioned(
                    top: 250,
                    right: 0,
                    left: 0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Container(
                        height: 70,
                        padding: EdgeInsets.only(right: 20.0),
                        decoration: BoxDecoration(
                            color: AppStyle.cardFloatingColor,
                          borderRadius: BorderRadius.circular(18)
                        ),
                        child: Container(
                          margin: EdgeInsets.only(left: 120.0, top: 10.0),
                          child:  Text("Assista as aulas e faça as atividades para você subir no Pódio!",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                                color: Colors.white
                            ),
                          ),
                        )
                      ),
                    )
                ),
                Positioned(
                    top: 230,
                    left: 50,
                    child: Image.asset('assets/images/podio.png',
                    height: 80,
                      width: 80,
                    )
                ),

               Positioned(
                 bottom: size.height * 0.02,
                 left: 0,
                 right: 0,
                 child: Container(
                 child:  Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     SizedBox(height: 10,),

                     Padding(padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
                       child:  Text("Últimas Aulas",
                         style: GoogleFonts.roboto(
                             color: AppStyle.titleColor,
                             fontSize: 18,
                             fontWeight: FontWeight.w500
                         )
                       ),
                     ),
                     Container(
                       height: 120,
                       child: ListView(
                         scrollDirection: Axis.horizontal,
                         padding: EdgeInsets.only(left: 30, right: 3),
                         children: [
                           Container(
                             height: 125,
                             width: 170,

                             margin: EdgeInsets.all(5),
                             child: Center(
                               child: Image.asset('assets/images/biomas.png'),
                             ),
                           ),
                           Container(
                             height: 125,
                             width: 170,
                             margin: EdgeInsets.all(5),
                             child: Center(
                               child: Image.asset('assets/images/angulos.png'),
                             ),
                           ),
                           Container(
                             height: 125,
                             width: 170,

                             margin: EdgeInsets.all(5),
                             child: Center(
                               child: Image.asset('assets/images/adverbio.png'),
                             ),
                           ),

                           Container(
                             width: 185,
                             child: Center(
                               child: Image.asset('assets/images/banner2.png',
                               height: 170,
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),

                     Padding(padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
                       child:  Text("Meus Favoritos",
                         style: GoogleFonts.roboto(
                           color: AppStyle.titleColor,
                           fontSize: 18,
                           fontWeight: FontWeight.w500
                         )
                       ),
                     ),
                     Container(
                       height: 120,
                       child: ListView(
                           scrollDirection: Axis.horizontal,
                           padding: EdgeInsets.only(left: 30, right: 3),
                           children: [
                             Container(
                               height: 125,
                               width: 170,

                               margin: EdgeInsets.all(5),
                               child: Center(
                                 child: Image.asset('assets/images/adverbio.png'),
                               ),
                             ),
                             Container(
                               width: 185,
                               child: Center(
                                 child: Image.asset('assets/images/banner2.png',
                                 height: 165,
                               ),
                               ),
                             ),
                             Container(
                               height: 125,
                               width: 170,
                               margin: EdgeInsets.all(5),
                               child: Center(
                                 child: Image.asset('assets/images/angulos.png'),
                               ),
                             ),
                             Container(
                               height: 125,
                               width: 170,

                               margin: EdgeInsets.all(5),
                               child: Center(
                                 child: Image.asset('assets/images/biomas.png'),
                               ),
                             ),


                           ],
                       ),
                     ),

                     SizedBox(height: 10,),
                   ],
                 ),
               ),
               )
              ],
            )
          ),

    );
  }
}
