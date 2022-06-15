import 'package:codeone/pages/bottomNavPages/perfil_page.dart';
import 'package:codeone/widget/expansion_wid.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';


import '../style/app_style.dart';

class ListaAtividades extends StatefulWidget {
  ListaAtividades() : super();

  @override
  State<ListaAtividades> createState() => _ListaAtividadesState();
}

class _ListaAtividadesState extends State<ListaAtividades> {


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

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
        children: [
          Container(
            height: 50,
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom:15.0),
                  child: Container(
                    child: Image.asset('assets/images/calculadora.png'),
                  ),
                ),
                SizedBox(width: 10.0,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Text(
                    "Matemática",
                    style: GoogleFonts.roboto(
                      fontSize: 22,
                      color: Colors.white
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
              ],
            ),
          ),
          SingleChildScrollView(
            child: ExpansionWid(),
          ),
        ],
      ),
    );
  }
}
