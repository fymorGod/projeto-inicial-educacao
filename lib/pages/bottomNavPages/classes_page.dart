import 'package:codeone/pages/lista_atividades.dart';
import 'package:codeone/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import '../../style/app_style.dart';

class ClassesPage extends StatefulWidget {
  const ClassesPage({Key? key}) : super(key: key);

  @override
  State<ClassesPage> createState() => _ClassesPageState();
}

class _ClassesPageState extends State<ClassesPage> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                child: LoginPage(),
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
        body: LayoutBuilder(
            builder: (_, constraints) {
              if(constraints.maxWidth < 400) {
                return Container(
                  height: constraints.maxHeight,
                  width: constraints.maxWidth,
                  child: SingleChildScrollView(
                    child: Column(
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
                        Padding(
                          padding: EdgeInsets.only(top: 30.0, left: 10.0),
                          child: Text(
                              "Minhas Matérias",
                              style: GoogleFonts.roboto(
                                  color: AppStyle.titleColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22
                              )
                          ) ,
                        ),
                        SizedBox(height: 10.0,),
                        Container(
                          height: 165,
                          child: Center(
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                padding: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width * 0.000,
                                    right: MediaQuery.of(context).size.width * 0.2),
                                itemCount: 2,
                                itemBuilder: (context, index) => Container(
                                  height: 125,
                                  width: 170,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.white
                                  ),
                                  margin: EdgeInsets.all(5),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.all(0.0),
                                        primary: Colors.white
                                    ),
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 300,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(colors: [AppStyle.grientCard, AppStyle.gradientCart2]),
                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(4), topRight: Radius.circular(4)),
                                            ),
                                            child: Image.asset('assets/images/calculadora.png',),
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(top: 10.0),
                                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                                child: Text(
                                                    "Matemática",
                                                    style: GoogleFonts.roboto(
                                                        color: Colors.black54,
                                                        fontWeight: FontWeight.bold
                                                    )
                                                ),
                                              ),
                                              SizedBox(height: 5.0,),
                                              Container(
                                                padding: EdgeInsets.symmetric(horizontal: 12.0),
                                                child: Text(
                                                    "19 aulas",
                                                    style: GoogleFonts.roboto(
                                                        color: Colors.black26,
                                                        fontSize: 11
                                                    )
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    onPressed: (){
                                      Navigator.push(context, PageTransition(
                                          child: ListaAtividades(),
                                          type:  PageTransitionType.fade,
                                          duration: const Duration(milliseconds: 10)
                                      )
                                      );
                                    },
                                  ),
                                )
                            ),
                          ),
                        ),
                        Container(
                          height: 165,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width * 0.000,
                                  right: MediaQuery.of(context).size.width * 0.000),
                              itemCount: 2,
                              itemBuilder: (context, index) => Container(
                                height: 125,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white
                                ),
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(0.0),
                                      primary: Colors.white
                                  ),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 300,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [Color(0xFFACE8E8), Color(0xFF18A1A1)]),
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(4), topRight: Radius.circular(4)),
                                          ),
                                          child: Image.asset('assets/images/geografia.png',),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: 10.0),
                                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                                              child: Text(
                                                  "Geografia",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black54,
                                                      fontWeight: FontWeight.bold
                                                  )
                                              ),
                                            ),
                                            SizedBox(height: 5.0,),
                                            Container(
                                              padding: EdgeInsets.symmetric(horizontal: 12.0),
                                              child: Text(
                                                  "19 aulas",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black26,
                                                      fontSize: 11
                                                  )
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, PageTransition(
                                        child: ListaAtividades(),
                                        type:  PageTransitionType.fade,
                                        duration: const Duration(milliseconds: 10)
                                    )
                                    );
                                  },
                                ),
                              )
                          ),
                        ),
                        Container(
                          height: 165,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width * 0.000,
                                  right: MediaQuery.of(context).size.width * 0.000),
                              itemCount: 2,
                              itemBuilder: (context, index) => Container(
                                height: 125,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white
                                ),
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(0.0),
                                      primary: Colors.white
                                  ),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 300,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [Color(0xFFFD9939), Color(0xFFFDB368)]),
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(4), topRight: Radius.circular(4)),
                                          ),
                                          child: Image.asset('assets/images/ciencias.png',),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: 10.0),
                                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                                              child: Text(
                                                  "Ciências",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black54,
                                                      fontWeight: FontWeight.bold
                                                  )
                                              ),
                                            ),
                                            SizedBox(height: 5.0,),
                                            Container(
                                              padding: EdgeInsets.symmetric(horizontal: 12.0),
                                              child: Text(
                                                  "19 aulas",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black26,
                                                      fontSize: 11
                                                  )
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, PageTransition(
                                        child: ListaAtividades(),
                                        type:  PageTransitionType.fade,
                                        duration: const Duration(milliseconds: 10)
                                    )
                                    );
                                  },
                                ),
                              )
                          ),
                        ),
                        Container(
                          height: 165,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width * 0.000,
                                  right: MediaQuery.of(context).size.width * 0.000),
                              itemCount: 2,
                              itemBuilder: (context, index) => Container(
                                height: 125,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white
                                ),
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(0.0),
                                      primary: Colors.white
                                  ),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 300,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [Color(0xFFDBD53B), Color(0xFFF4FFB5)]),
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(4), topRight: Radius.circular(4)),
                                          ),
                                          child: Image.asset('assets/images/artes.png',),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: 10.0),
                                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                                              child: Text(
                                                  "Artes",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black54,
                                                      fontWeight: FontWeight.bold
                                                  )
                                              ),
                                            ),
                                            SizedBox(height: 5.0,),
                                            Container(
                                              padding: EdgeInsets.symmetric(horizontal: 12.0),
                                              child: Text(
                                                  "19 aulas",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black26,
                                                      fontSize: 11
                                                  )
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, PageTransition(
                                        child: ListaAtividades(),
                                        type:  PageTransitionType.fade,
                                        duration: const Duration(milliseconds: 10)
                                    )
                                    );
                                  },
                                ),
                              )
                          ),
                        ),
                        Container(
                          height: 165,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width * 0.000,
                                  right: MediaQuery.of(context).size.width * 0.000),
                              itemCount: 2,
                              itemBuilder: (context, index) => Container(
                                height: 125,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white
                                ),
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(0.0),
                                      primary: Colors.white
                                  ),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 300,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [Color(0xFFD2CFFA), Color(0xFF615AD0)]),
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(4), topRight: Radius.circular(4)),
                                          ),
                                          child: Image.asset('assets/images/portugues.png',),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: 10.0),
                                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                                              child: Text(
                                                  "Português",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black54,
                                                      fontWeight: FontWeight.bold
                                                  )
                                              ),
                                            ),
                                            SizedBox(height: 5.0,),
                                            Container(
                                              padding: EdgeInsets.symmetric(horizontal: 12.0),
                                              child: Text(
                                                  "19 aulas",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black26,
                                                      fontSize: 11
                                                  )
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, PageTransition(
                                        child: ListaAtividades(),
                                        type:  PageTransitionType.fade,
                                        duration: const Duration(milliseconds: 10)
                                    )
                                    );
                                  },
                                ),
                              )
                          ),
                        ),
                        Container(
                          height: 165,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width * 0.000,
                                  right: MediaQuery.of(context).size.width * 0.000),
                              itemCount: 2,
                              itemBuilder: (context, index) => Container(
                                height: 125,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white
                                ),
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(0.0),
                                      primary: Colors.white
                                  ),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 300,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [Color(0xFFFC79BA), Color(0xFFFFB1FF)]),
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(4), topRight: Radius.circular(4)),
                                          ),
                                          child: Image.asset('assets/images/historia.png',),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: 10.0),
                                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                                              child: Text(
                                                  "História",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black54,
                                                      fontWeight: FontWeight.bold
                                                  )
                                              ),
                                            ),
                                            SizedBox(height: 5.0,),
                                            Container(
                                              padding: EdgeInsets.symmetric(horizontal: 12.0),
                                              child: Text(
                                                  "19 aulas",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black26,
                                                      fontSize: 11
                                                  )
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, PageTransition(
                                        child: ListaAtividades(),
                                        type:  PageTransitionType.fade,
                                        duration: const Duration(milliseconds: 10)
                                    )
                                    );
                                  },
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return Container(
                  height: constraints.maxHeight,
                  width: constraints.maxWidth,
                  child: SingleChildScrollView(
                    child: Column(
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
                        Padding(
                          padding: EdgeInsets.only(top: 30.0, left: 10.0),
                          child: Text(
                              "Minhas Matérias",
                              style: GoogleFonts.roboto(
                                  color: AppStyle.titleColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22
                              )
                          ) ,
                        ),
                        SizedBox(height: 10.0,),
                        Container(
                          padding: EdgeInsets.only(left: 25),
                          height: 165,
                          child: Center(
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                padding: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width * 0.000,
                                    right: MediaQuery.of(context).size.width * 0.2),
                                itemCount: 2,
                                itemBuilder: (context, index) => Container(
                                  height: 125,
                                  width: 170,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.white
                                  ),
                                  margin: EdgeInsets.all(5),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.all(0.0),
                                        primary: Colors.white
                                    ),
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 300,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(colors: [AppStyle.grientCard, AppStyle.gradientCart2]),
                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(4), topRight: Radius.circular(4)),
                                            ),
                                            child: Image.asset('assets/images/calculadora.png',),
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(top: 10.0),
                                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                                child: Text(
                                                    "Matemática",
                                                    style: GoogleFonts.roboto(
                                                        color: Colors.black54,
                                                        fontWeight: FontWeight.bold
                                                    )
                                                ),
                                              ),
                                              SizedBox(height: 5.0,),
                                              Container(
                                                padding: EdgeInsets.symmetric(horizontal: 12.0),
                                                child: Text(
                                                    "19 aulas",
                                                    style: GoogleFonts.roboto(
                                                        color: Colors.black26,
                                                        fontSize: 11
                                                    )
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    onPressed: (){
                                      Navigator.push(context, PageTransition(
                                          child: ListaAtividades(),
                                          type:  PageTransitionType.fade,
                                          duration: const Duration(milliseconds: 10)
                                      )
                                      );
                                    },
                                  ),
                                )
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 25),
                          height: 165,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width * 0.000,
                                  right: MediaQuery.of(context).size.width * 0.000),
                              itemCount: 2,
                              itemBuilder: (context, index) => Container(
                                height: 125,
                                width: 170,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [Colors.deepPurple, Colors.deepPurpleAccent]),
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white
                                ),
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(0.0),
                                      primary: Colors.white
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 300,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [Color(0xFFD2CFFA), Color(0xFF615AD0)]),
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(4), topRight: Radius.circular(4)),
                                        ),
                                        child: Image.asset('assets/images/portugues.png',),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 10.0),
                                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                                            child: Text(
                                                "Português",
                                                style: GoogleFonts.roboto(
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.bold
                                                )
                                            ),
                                          ),
                                          SizedBox(height: 5.0,),
                                          Container(
                                            padding: EdgeInsets.symmetric(horizontal: 12.0),
                                            child: Text(
                                                "19 aulas",
                                                style: GoogleFonts.roboto(
                                                    color: Colors.black26,
                                                    fontSize: 11
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, PageTransition(
                                        child: ListaAtividades(),
                                        type:  PageTransitionType.fade,
                                        duration: const Duration(milliseconds: 10)
                                    )
                                    );
                                  },
                                ),
                              )
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 25),
                          height: 165,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width * 0.000,
                                  right: MediaQuery.of(context).size.width * 0.000),
                              itemCount: 2,
                              itemBuilder: (context, index) => Container(
                                height: 125,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white
                                ),
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(0.0),
                                      primary: Colors.white
                                  ),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 300,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [Color(0xFFDBD53B), Color(0xFFF4FFB5)]),
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(4), topRight: Radius.circular(4)),
                                          ),
                                          child: Image.asset('assets/images/artes.png',),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: 10.0),
                                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                                              child: Text(
                                                  "Artes",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black54,
                                                      fontWeight: FontWeight.bold
                                                  )
                                              ),
                                            ),
                                            SizedBox(height: 5.0,),
                                            Container(
                                              padding: EdgeInsets.symmetric(horizontal: 12.0),
                                              child: Text(
                                                  "19 aulas",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black26,
                                                      fontSize: 11
                                                  )
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, PageTransition(
                                        child: ListaAtividades(),
                                        type:  PageTransitionType.fade,
                                        duration: const Duration(milliseconds: 10)
                                    )
                                    );
                                  },
                                ),
                              )
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 25),
                          height: 165,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width * 0.000,
                                  right: MediaQuery.of(context).size.width * 0.000),
                              itemCount: 2,
                              itemBuilder: (context, index) => Container(
                                height: 125,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white
                                ),
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(0.0),
                                      primary: Colors.white
                                  ),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 300,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [Color(0xFFFD9939), Color(0xFFFDB368)]),
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(4), topRight: Radius.circular(4)),
                                          ),
                                          child: Image.asset('assets/images/ciencias.png',),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: 10.0),
                                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                                              child: Text(
                                                  "Ciências",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black54,
                                                      fontWeight: FontWeight.bold
                                                  )
                                              ),
                                            ),
                                            SizedBox(height: 5.0,),
                                            Container(
                                              padding: EdgeInsets.symmetric(horizontal: 12.0),
                                              child: Text(
                                                  "19 aulas",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black26,
                                                      fontSize: 11
                                                  )
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, PageTransition(
                                        child: ListaAtividades(),
                                        type:  PageTransitionType.fade,
                                        duration: const Duration(milliseconds: 10)
                                    )
                                    );
                                  },
                                ),
                              )
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 25),
                          height: 165,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width * 0.000,
                                  right: MediaQuery.of(context).size.width * 0.000),
                              itemCount: 2,
                              itemBuilder: (context, index) => Container(
                                height: 125,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white
                                ),
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(0.0),
                                      primary: Colors.white
                                  ),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 300,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [Color(0xFFACE8E8), Color(0xFF18A1A1)]),
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(4), topRight: Radius.circular(4)),
                                          ),
                                          child: Image.asset('assets/images/geografia.png',),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: 10.0),
                                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                                              child: Text(
                                                  "Geografia",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black54,
                                                      fontWeight: FontWeight.bold
                                                  )
                                              ),
                                            ),
                                            SizedBox(height: 5.0,),
                                            Container(
                                              padding: EdgeInsets.symmetric(horizontal: 12.0),
                                              child: Text(
                                                  "19 aulas",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black26,
                                                      fontSize: 11
                                                  )
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, PageTransition(
                                        child: ListaAtividades(),
                                        type:  PageTransitionType.fade,
                                        duration: const Duration(milliseconds: 10)
                                    )
                                    );
                                  },
                                ),
                              )
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 25),
                          height: 165,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width * 0.000,
                                  right: MediaQuery.of(context).size.width * 0.000),
                              itemCount: 2,
                              itemBuilder: (context, index) => Container(
                                height: 125,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white
                                ),
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(0.0),
                                      primary: Colors.white
                                  ),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 300,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [Color(0xFFFC79BA), Color(0xFFFFB1FF)]),
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(4), topRight: Radius.circular(4)),
                                          ),
                                          child: Image.asset('assets/images/historia.png',),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: 10.0),
                                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                                              child: Text(
                                                  "História",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black54,
                                                      fontWeight: FontWeight.bold
                                                  )
                                              ),
                                            ),
                                            SizedBox(height: 5.0,),
                                            Container(
                                              padding: EdgeInsets.symmetric(horizontal: 12.0),
                                              child: Text(
                                                  "19 aulas",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black26,
                                                      fontSize: 11
                                                  )
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, PageTransition(
                                        child: ListaAtividades(),
                                        type:  PageTransitionType.fade,
                                        duration: const Duration(milliseconds: 10)
                                    )
                                    );
                                  },
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }

            }
        )
    );
  }
}