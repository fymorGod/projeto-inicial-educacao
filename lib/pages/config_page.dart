import 'package:flutter/material.dart';
import 'package:codeone/style/app_style.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({Key? key}) : super(key: key);

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {

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
    extendBody: true,
      body: Container(
        color: Color(0xffEDF2FF),
        child: Text("Configurações", style: TextStyle(),),

      ),
    );
  }
}
