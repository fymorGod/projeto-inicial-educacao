import 'package:codeone/pages/config_page.dart';
import 'package:codeone/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class IdiomaPage extends StatefulWidget {
  const IdiomaPage({Key? key}) : super(key: key);

  @override
  State<IdiomaPage> createState() => _IdiomaPageState();
}

class _IdiomaPageState extends State<IdiomaPage> {
  @override
  Widget build(BuildContext context) {
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
            padding: EdgeInsets.only(top: 20, left: 30),
            child: Text("Idioma", style: TextStyle(fontSize: 18,
                color: Color(0xff403B91),
                fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            child: ElevatedButton(
                onPressed: () => Navigator.push(context, PageTransition(
                    child: const ConfigPage(),
                    type: PageTransitionType.fade,
                    duration: const Duration(milliseconds: 10)
                ),),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                  fixedSize: Size(350, 50), primary: Color(0xff00A1A1),
                ),
                child: Text('Portugues', style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),)),
          ),
          SizedBox(height: 5,),
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
                child: Text('Ingles', style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),)),
          ),
        ],
      ),
    );
  }
}