<<<<<<< HEAD
import 'package:codeone/widget/ExpansionWid.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
=======
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

>>>>>>> 5342dfbe7f91bfcc979a9f4766d89b545d26c2b6
import '../style/app_style.dart';

class ListaAtividades extends StatefulWidget {
  const ListaAtividades({Key? key}) : super(key: key);

  @override
  State<ListaAtividades> createState() => _ListaAtividadesState();
}

class _ListaAtividadesState extends State<ListaAtividades> {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    final size = MediaQuery.of(context).size;
=======
>>>>>>> 5342dfbe7f91bfcc979a9f4766d89b545d26c2b6
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStyle.secondColor,
        elevation: 0,
        actions: [
<<<<<<< HEAD
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
=======
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
>>>>>>> 5342dfbe7f91bfcc979a9f4766d89b545d26c2b6
          ),
          ),
        ],
      ),
      backgroundColor: AppStyle.mainColor,
<<<<<<< HEAD
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
=======
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
>>>>>>> 5342dfbe7f91bfcc979a9f4766d89b545d26c2b6
