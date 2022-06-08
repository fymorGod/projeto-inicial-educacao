import 'package:codeone/widget/ExpansionWid.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../style/app_style.dart';

class ListaAtividades extends StatefulWidget {
  const ListaAtividades({Key? key}) : super(key: key);

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
        IconButton(onPressed: (){}, icon: Icon(Icons.person,
          size: 25,
          color: Colors.white,
          ),
          ),
        ],
      ),
      backgroundColor: AppStyle.mainColor,
      body:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                 width: size.width,
                 height: 60,
                 decoration: BoxDecoration(
                   color: AppStyle.secondColor,
                   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
                   boxShadow: [
                     BoxShadow(
                         color: AppStyle.shadowMainColor,
                         spreadRadius: 2,
                         blurRadius: 2,
                         offset: Offset(0.0, 2.0)
                     ),
                   ],
                 ),
                   child:  Row(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                     Container(
                       child: Image.asset('assets/images/calculadora.png',
                         width: 40,
                         height: 40,
                       ),
                     ),
                     Container(
                        child: Text(
                          "MATEMÁTICA",
                          style: GoogleFonts.roboto(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w700
                          ),
                        ),
                      ),
                    ],
                   ),
            ),
            SingleChildScrollView(
              child: ExpansionWid(),
            )
          ],
        )
    );
  }
}
