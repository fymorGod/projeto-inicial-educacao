import 'package:codeone/pages/idioma_page.dart';
import 'package:codeone/pages/password_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import '../style/app_style.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({Key? key}) : super(key: key);

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  bool _toggled1 = false;
  bool _toggled2 = false;
  bool _toggled3 = false;


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final ValueChanged<bool>? onChanged;
    var _isSelected = false;
    return Scaffold(
      resizeToAvoidBottomInset : false,
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
      extendBody: true,
      body: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: LayoutBuilder(
              builder: (_, constraints) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                              padding: const EdgeInsets.only(top: 30),
                              child: Column(
                                children: [
                                  Center(
                                    child: Image.asset('assets/images/avatarg.png',
                                      height: 100,
                                      width: 100,),
                                  ),
                                  SizedBox(height: 10,),
                                  Text("Mudar Avatar", style: TextStyle(
                                      color: Color(0xff403B91),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),)
                                ],
                              )
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20, top: 10),
                            child: Text('Senha', style: TextStyle(
                              color: Color(0xff403B91),
                              fontSize: 18,
                            ),
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 20),
                            alignment: Alignment.center,
                            child: ElevatedButton(
                                onPressed: () => Navigator.push(context, PageTransition(
                                    child: const PasswordPage(),
                                    type: PageTransitionType.fade,
                                    duration: const Duration(milliseconds: 10)
                                )),
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                                  fixedSize: Size(350, 50), primary: Colors.white,
                                ),
                                child: Text('*****', style: TextStyle(fontSize: 18, fontFamily: 'Roboto', color: Color(0xff9E9E9E)),)),
                          ),

                          SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 30),
                                  alignment: Alignment.center,
                                  child: ElevatedButton(onPressed: () => Navigator.push(context, PageTransition(
                                      child: const IdiomaPage(),
                                      type: PageTransitionType.fade,
                                      duration: const Duration(milliseconds: 10)
                                  )),
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                                        fixedSize: Size(350, 50), primary: Color(0xff00A1A1),
                                      ),
                                      child: Text('Idioma', style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),)),
                                ),
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
                                      child: Text('Sair', style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),)),
                                ),

                                //Switch
                                Container(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Text("Geral", style: TextStyle(
                                      color: Color(0xff403B91),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Container(
                                  padding: EdgeInsets.only(left: 10),
                                  width: 350,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Color(0xff00B7B7),
                                      borderRadius: BorderRadius.all(Radius.circular(18))
                                  ),

                                  child: SwitchListTile(
                                    title: const Text("Notificação", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                    value: _toggled1,
                                    onChanged: (value){
                                      setState(()=>_toggled1=value);
                                    },
                                    secondary: IconButton(
                                      onPressed: () {
                                        HapticFeedback.vibrate();
                                      },
                                      icon: Icon(Icons.notifications_off),

                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Container(
                                  padding: EdgeInsets.only(left: 10),
                                  width: 350,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Color(0xff00B7B7),
                                      borderRadius: BorderRadius.all(Radius.circular(18))
                                  ),
                                  child: SwitchListTile(
                                    title: const Text("Efeitos Sonoros", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                    value: _toggled2,
                                    onChanged: (value){
                                      setState(()=>_toggled2=value);
                                    },
                                    secondary: IconButton(
                                      onPressed: () {
                                        HapticFeedback.heavyImpact();
                                      },
                                      icon: Icon(Icons.volume_mute),

                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Container(
                                  padding: EdgeInsets.only(left: 10),
                                  width: 350,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Color(0xff00B7B7),
                                      borderRadius: BorderRadius.all(Radius.circular(18))
                                  ),
                                  child: SwitchListTile(
                                    title: const Text("Vibração", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                    value: _toggled3,
                                    onChanged: (value) =>
                                        setState(() =>
                                        _toggled3 = value),
                                    secondary: IconButton(
                                      onPressed: () {
                                        HapticFeedback.heavyImpact();
                                      },
                                      icon: Icon(Icons.vibration),

                                    ),


                                  ),
                                ),

                                //botão clicável
                                Container(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Text("Privacidade", style: TextStyle(
                                      color: Color(0xff403B91),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),),
                                ),
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
                                        fixedSize: Size(350, 50), primary: Color(0xff67D4D4),
                                      ),
                                      child: Text('Termos de uso', style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),)),
                                ),
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
                                        fixedSize: Size(350, 50), primary: Color(0xff67D4D4),
                                      ),
                                      child: Text('Política de privacidade', style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),)),
                                ),
                                SizedBox(height: 20,)
                              ],
                            ),
                          )
                        ],
                      ),

                    ),
                  ],
                );
              }
          ),
        ),
      ),
    );
  }
}