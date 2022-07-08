
import 'package:flutter/material.dart';

import '../style/app_style.dart';

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
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          color: AppStyle.mainColor,
          child: Center(
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
                  padding: EdgeInsets.only(top: 10, left: 20,),
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
                        hintText: "**********",
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 0,),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 3, color: Colors.blue),
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
                        hintText: "**********",
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 0,),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 3, color: Colors.blue),
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
                        hintText: "**********",
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 0),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 3, color: Colors.blue),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, left: 10),
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      ElevatedButton(onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                            fixedSize: Size(170, 50), primary: Color(0xffBAC8FF),
                          ),
                          child: Text('Cancelar', style: TextStyle(
                              color: Color(0xff4263EB),
                              fontSize: 18,
                              fontFamily: 'Roboto'),)),
                      SizedBox(width: 10,),
                      ElevatedButton(onPressed: () {},
                          style: ElevatedButton.styleFrom(

                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                            fixedSize: Size(170, 50), primary: Color(0xff4263EB),
                          ),
                          child: Text('Confirmar', style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}