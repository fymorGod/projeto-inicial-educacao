import 'package:codeone/pages/config_page.dart';
import 'package:codeone/pages/minhas_notas.dart';
import 'package:codeone/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({Key? key}) : super(key: key);

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {

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
          IconButton(onPressed: (){}, icon: Icon(Icons.person,
            size: 25,
            color: Colors.white,
          ),
          ),
        ],
      ),
      extendBody: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width,
            height: 220,
            child: Container(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                          child: Image.asset("assets/images/moldura.png"),
                      margin: EdgeInsets.only(right: 270, top: 20, left: 10),),
                      Container(
                          child: Image.asset("assets/images/person.png"),
                        margin: EdgeInsets.only(right: 270, top: 25, left: 14),),
                      Container(
                        margin: EdgeInsets.only(left: 130, top: 18),
                        child: Text( "Vinicius Travincas", style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.w400
                        ),

                        ),
                      ),
                      Container(
                        width: 110,
                        height: 26,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xff364FC7)
                        ),
                        margin: EdgeInsets.only(left: 130, top: 70),
                        child: Center(
                          child: Text( "C.E.M PERDIGÂO", style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400
                          ),

                          ),
                        ),
                      ),
                      Container(
                        width: 55,
                        height: 26,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xff364FC7)
                        ),
                        margin: EdgeInsets.only(left: 250, top: 70),
                        child: Center(
                          child: Text( "9º C", style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400
                          ),

                          ),
                        ),
                      ),
                      Container(
                        width: 110,
                        height: 26,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xff364FC7)
                        ),
                        margin: EdgeInsets.only(left: 130, top: 100),
                        child: Center(
                          child: Text( "20180002878", style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold
                          ),

                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xff00A1A1)
                        ),
                        margin: EdgeInsets.only(left: 250, top: 100),
                        child: Center(
                          child: Text( "150", style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                          ),

                          ),
                        ),
                      ),
                    ],
                  ),

                ],

              ),
            ),
            padding: const EdgeInsets.all(20),
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
          ),
          SizedBox(height: 13,),
          Container(
            margin: EdgeInsets.only(left: 20),
            width: 370,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/rank.png'),
                Text("Você está na divisão ouro,\n"
                    "faça as atividades e assista\n"
                    "aulas para chegar ao Platina!", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
              ],
            ),
            height: 120,
            decoration: BoxDecoration(
              color: Color(0xff91A7FF),
              borderRadius: BorderRadius.all(Radius.circular(28)),
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
          SizedBox(height: 13,),
          Container(
           padding: EdgeInsets.only(left: 20),
            child: Text("Aulas Baixadas", style: TextStyle(color: Color(0xff403B91),
                  fontSize: 18),
            textAlign: TextAlign.start,)
            ),
          SizedBox(height: 10,),
          Container(
            height: 120,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 30, right: 3),
                itemCount: 6,
                itemBuilder: (context, index) => Container(
                  height: 125,
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.indigoAccent
                  ),
                  margin: EdgeInsets.all(5),
                  child: Center(
                    child: Text("Card $index"),
                  ),
                )
            ),
          ),
          SizedBox(height: 20,),
          Container(

            alignment: Alignment.center,
            child: ElevatedButton(onPressed: () => Navigator.push(context, PageTransition(
                child: const MinhasNotasPage(),
                type: PageTransitionType.fade,
                duration: const Duration(milliseconds: 10)
            )),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                  fixedSize: Size(350, 50), primary: Color(0xff00A1A1),
                ),
                child: Text('Minhas Notas', style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),)),
          ),
          SizedBox(height: 10,),
          Container(

            alignment: Alignment.center,
            child: ElevatedButton(onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                  fixedSize: Size(350, 50), primary: Color(0xff00B7B7),
                ),
                child: Text('Classificação', style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),)),
          ),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(onPressed: () => Navigator.push(context, PageTransition(
                child: const ConfigPage(),
                type: PageTransitionType.fade,
                duration: const Duration(milliseconds: 10)
            )),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                  fixedSize: Size(350, 50), primary: Color(0xff67D4D4),
                ),
                child: Text('Configurações', style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),)),
          ),

        ],
        ),
    );
  }
}
