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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Image.asset('assets/images/calculadora.png',
                  width: 50,
                  height: 50,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    "MATEMÁTICA",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
