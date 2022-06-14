import 'package:flutter/material.dart';
import 'package:codeone/style/app_style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({Key? key}) : super(key: key);

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
        appBar: AppBar(
        title: Container(
        width: 120,
        height: 60,
        child: Image.asset('assets/images/logo-educacao.png',),
    ),
    backgroundColor: AppStyle.secondColor,
    elevation: 0,
    actions: [
    IconButton(onPressed: (){}, icon: const Icon(Icons.search,
    size: 25,
    color: Colors.white,
    ),
    ),

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
    extendBody: true,
      body:Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          color: const Color(0xffEDF2FF),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Configurações", style: TextStyle(
                  color: Color(0xff403B91),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto"
                ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Center(
                          child: Image.asset('assets/images/avatarg.png',
                          height: 100,
                          width: 100,),
                      ),
                      SizedBox(height: 10,),
                      Text("Mudar Avatar", style: TextStyle(
                          color: Color(0xff403B91),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),)
                    ],
                  )
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Senha', style: TextStyle(
                          color: Color(0xff403B91),
                        fontSize: 18,
                      ),
                      ),
                      Container(
                        height: 42,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(),
                              borderRadius: BorderRadius.circular(15)
                            )
                          ),
                        ),
                      )

                    ],
                  ),

                ),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        alignment: Alignment.center,
                        child: ElevatedButton(onPressed: () => Navigator.push(context, PageTransition(
                            child: const ConfigPage(),
                            type: PageTransitionType.fade,
                            duration: const Duration(milliseconds: 10)
                        )),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                              fixedSize: Size(350, 50), primary: Color(0xff00A1A1),
                            ),
                            child: Text('Idioma', style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        alignment: Alignment.center,
                        child: ElevatedButton(onPressed: () => Navigator.push(context, PageTransition(
                            child: const ConfigPage(),
                            type: PageTransitionType.fade,
                            duration: const Duration(milliseconds: 10)
                        )),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                              fixedSize: Size(350, 50), primary: Color(0xff00A1A1),
                            ),
                            child: Text('Sair', style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        alignment: Alignment.center,
                        child: ElevatedButton(onPressed: () => Navigator.push(context, PageTransition(
                            child: const ConfigPage(),
                            type: PageTransitionType.fade,
                            duration: const Duration(milliseconds: 10)
                        )),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                              fixedSize: Size(350, 50), primary: Color(0xff00A1A1),
                            ),
                            child: Text('Sair', style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),)),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("Geral", style: TextStyle(
                          color: Color(0xff403B91),
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        alignment: Alignment.center,
                        child: ElevatedButton(onPressed: () => Navigator.push(context, PageTransition(
                            child: const ConfigPage(),
                            type: PageTransitionType.fade,
                            duration: const Duration(milliseconds: 10)
                        )),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                              fixedSize: Size(350, 50), primary: Color(0xff00A1A1),
                            ),
                            child: Text('Sair', style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        alignment: Alignment.center,
                        child: ElevatedButton(onPressed: () => Navigator.push(context, PageTransition(
                            child: const ConfigPage(),
                            type: PageTransitionType.fade,
                            duration: const Duration(milliseconds: 10)
                        )),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                              fixedSize: Size(350, 50), primary: Color(0xff00A1A1),
                            ),
                            child: Text('Sair', style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        alignment: Alignment.center,
                        child: ElevatedButton(onPressed: () => Navigator.push(context, PageTransition(
                            child: const ConfigPage(),
                            type: PageTransitionType.fade,
                            duration: const Duration(milliseconds: 10)
                        )),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                              fixedSize: Size(350, 50), primary: Color(0xff00A1A1),
                            ),
                            child: Text('Sair', style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),)),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("Privacidade", style: TextStyle(
                            color: Color(0xff403B91),
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
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
                            child: Text('Termos de uso', style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
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
                            child: Text('Política de privacidade', style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}
