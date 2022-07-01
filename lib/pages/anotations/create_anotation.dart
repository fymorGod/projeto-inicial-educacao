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

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStyle.secondColor,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search,
            size: 25,
            color: Colors.white,
          ),
          ),

          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none_outlined,
            size: 25,
            color: Colors.white,
          ),
          ),
          IconButton(
            onPressed: () => Navigator.push(context, PageTransition(
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
                    onPressed: (){
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                          ),
                          backgroundColor: Color(0xffF1F3F5),
                          context: context,
                          builder: (context) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 30, top: 30),
                                child: Text(
                                  "ADICIONAR TAGS",
                                  style: GoogleFonts.roboto(
                                    color: AppStyle.secondColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16
                                  ),
                                ),
                              ),Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            color: AppStyle.mainColor,
                                            borderRadius: BorderRadius.circular(12)
                                          ),
                                          child: TextButton(
                                              onPressed: (){
                                              },
                                              child: Text(
                                                "NOVA TAG",
                                                style: GoogleFonts.roboto(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppStyle.secondColor
                                                ),
                                                  textAlign: TextAlign.start
                                              )
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                            ],
                          )
                      );
                    },
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
