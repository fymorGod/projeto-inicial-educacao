import 'package:codeone/pages/lista_atividades.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../style/app_style.dart';

class ClassesPage extends StatefulWidget {
  const ClassesPage({Key? key}) : super(key: key);

  @override
  State<ClassesPage> createState() => _ClassesPageState();
}

class _ClassesPageState extends State<ClassesPage> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
<<<<<<< HEAD
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
=======
        appBar: AppBar(
          title: Container(
            width: 120,
            height: 60,
            child: Image.asset('assets/images/logo-educacao.png',),
>>>>>>> 5342dfbe7f91bfcc979a9f4766d89b545d26c2b6
          ),
          backgroundColor: AppStyle.secondColor,
          elevation: 0,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search,
              size: 25,
              color: Colors.white,
            ),
            ),

<<<<<<< HEAD
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
        height: 20,
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
        ),
          Padding(
            padding: EdgeInsets.only(top: 30.0, left: 40.0),
            child: Text(
              "Minhas Mat??rias",
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
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 30, right: 3),
                itemCount: 2,
                itemBuilder: (context, index) => Container(
=======
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
            Padding(
              padding: EdgeInsets.only(top: 30.0, left: 40.0),
              child: Text(
                  "Minhas Mat??rias",
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
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 30, right: 3),
                  itemCount: 2,
                  itemBuilder: (context, index) => Container(
>>>>>>> 5342dfbe7f91bfcc979a9f4766d89b545d26c2b6
                    height: 125,
                    width: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white
                    ),
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
<<<<<<< HEAD
                        padding: EdgeInsets.all(0.0),
                        primary: Colors.white
=======
                        primary: Colors.white,
                        padding: EdgeInsets.all(0.0),
>>>>>>> 5342dfbe7f91bfcc979a9f4766d89b545d26c2b6
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
<<<<<<< HEAD
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(4), topRight: Radius.circular(4)),
=======
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
>>>>>>> 5342dfbe7f91bfcc979a9f4766d89b545d26c2b6
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
                                      "Matem??tica",
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
<<<<<<< HEAD
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => ListaAtividades())
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
                padding: EdgeInsets.only(left: 30, right: 3),
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
                                    "Matem??tica",
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ListaAtividades())
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
                padding: EdgeInsets.only(left: 30, right: 3),
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
                                    "Matem??tica",
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ListaAtividades())
                      );
                    },
                  ),
                )
=======
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ListaAtividades())
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
                  padding: EdgeInsets.only(left: 30, right: 3),
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
                        primary: Colors.white,
                        padding: EdgeInsets.all(0.0),
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
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
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
                                      "Matem??tica",
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ListaAtividades())
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
                  padding: EdgeInsets.only(left: 30, right: 3),
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
                        primary: Colors.white,
                        padding: EdgeInsets.all(0.0),
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
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
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
                                      "Matem??tica",
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ListaAtividades())
                        );
                      },
                    ),
                  )
              ),
>>>>>>> 5342dfbe7f91bfcc979a9f4766d89b545d26c2b6
            ),
          ],
        )
    );
  }
}