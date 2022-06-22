import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import '../../style/app_style.dart';
import '../bottomNavPages/perfil_page.dart';

class CreateAnotation extends StatefulWidget {
  const CreateAnotation({Key? key}) : super(key: key);

  @override
  State<CreateAnotation> createState() => _CreateAnotationState();
}

class _CreateAnotationState extends State<CreateAnotation> {
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
                fontSize: 22,
                color: AppStyle.titleColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  padding: EdgeInsets.only(left: 10.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: TextField(
                    expands: true,
                    maxLines: null,
                    autofocus: true,
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      focusColor: AppStyle.titleColor,
                      fillColor: AppStyle.titleColor,
                    ),
                  ),
                ),
              )
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(width: 145),
                TextButton(
                  onPressed: (){},
                  child: Row(
                    children: [
                      Icon(Icons.add),
                      Text("Adicionar Tags")
                    ],
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: AppStyle.mainColor,
                      primary: Color(0xFF4263EB)
                  ),
                ),
                ElevatedButton(
                  onPressed: (){},
                  child: Row(
                    children: [
                      Icon(Icons.add),
                      SizedBox(width: 5),
                      Text("Salvar")
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                      primary: AppStyle.secondColor
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 50)
        ],
      ),
    );
  }
}