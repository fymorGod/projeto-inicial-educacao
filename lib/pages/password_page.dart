import 'package:codeone/style/app_style.dart';
import 'package:flutter/material.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({Key? key}) : super(key: key);

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      backgroundColor: AppStyle.mainColor,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          color: AppStyle.mainColor,
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
              ),  //Decoração appBar
              Container(
                child: const Text("Configurações", style: TextStyle(
                    color: Color(0xff403B91),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"
                ),
                ),
                padding: EdgeInsets.only(top: 10, left: 20),
              ),
              Container(
                child: const Text("Senha atual", style: TextStyle(
                    color: Color(0xff403B91),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"
                ),
                ),
                padding: EdgeInsets.only(top: 20, left: 20),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: SizedBox(
                  height: 50,
                  width: 380,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 3, color: Colors.blue),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 3, color: Colors.red),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: const Text("Nova senha", style: TextStyle(
                    color: Color(0xff403B91),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"
                ),
                ),
                padding: EdgeInsets.only(top: 20, left: 20),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: SizedBox(
                  height: 50,
                  width: 380,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 3, color: Colors.blue),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 3, color: Colors.red),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: const Text("Confirmar nova senha", style: TextStyle(
                    color: Color(0xff403B91),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"
                ),
                ),
                padding: EdgeInsets.only(top: 20, left: 20),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: SizedBox(
                  height: 50,
                  width: 380,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 3, color: Colors.blue),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 3, color: Colors.red),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
