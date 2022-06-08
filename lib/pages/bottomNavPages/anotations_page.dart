import 'package:flutter/material.dart';
import '../../style/app_style.dart';
import '../lista_atividades.dart';

class AnotationPage extends StatefulWidget {
  const AnotationPage({Key? key}) : super(key: key);

  @override
  State<AnotationPage> createState() => _AnotationPageState();
}

class _AnotationPageState extends State<AnotationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 120,
          height: 60,
          child: Image.asset('assets/images/logo-educacao.png',),
        ),
        backgroundColor: AppStyle.shadowSecondColor,
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
      backgroundColor: AppStyle.shadowSecondColor,
      body: Container(
        color: Colors.indigo,
          child: Center(
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ListaAtividades())
                  );
                },
                child: Text("Clique Aqui"),
              )
          )
      ),
    );
  }
}
