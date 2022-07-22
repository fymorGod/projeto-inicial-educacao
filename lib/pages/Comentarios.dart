import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import '../style/app_style.dart';

class Comentarios extends StatefulWidget {
  const Comentarios({Key? key}) : super(key: key);

  @override
  State<Comentarios> createState() => _ComentariosState();
}

class _ComentariosState extends State<Comentarios> {

  @override
  Widget build(BuildContext context) {
    final double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 120,
          height: 60,
          child: Image.asset('assets/images/logo-educacao.png',),
        ),
        backgroundColor: AppStyle.secondColor,
        elevation: 0,
      ),
      backgroundColor: AppStyle.mainColor,
      resizeToAvoidBottomInset : false,
      body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 389) {
              return Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.765 - keyboardHeight,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            BubbleNormal(
                              text: 'Prova Hoje?',
                              isSender: false,
                              color: Color(0xFF1B97F3),
                              tail: true,
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            BubbleNormal(
                              text: 'Não',
                              isSender: true,
                              color: Color(0xFFE8E8EE),
                              tail: true,
                              sent: true,
                            ),
                            BubbleNormal(
                              text: 'ok',
                              isSender: false,
                              color: Color(0xFF1B97F3),
                              tail: true,
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: true,
                              color: Color(0xFFE8E8EE),
                              tail: true,
                              sent: true,
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: false,
                              color: Color(0xFF1B97F3),
                              tail: true,
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: true,
                              color: Color(0xFFE8E8EE),
                              tail: true,
                              sent: true,
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: false,
                              color: Color(0xFF1B97F3),
                              tail: true,
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: true,
                              color: Color(0xFFE8E8EE),
                              tail: true,
                              sent: true,
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: false,
                              color: Color(0xFF1B97F3),
                              tail: true,
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: true,
                              color: Color(0xFFE8E8EE),
                              tail: true,
                              sent: true,
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: false,
                              color: Color(0xFF1B97F3),
                              tail: true,
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: true,
                              color: Color(0xFFE8E8EE),
                              tail: true,
                              sent: true,
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: false,
                              color: Color(0xFF1B97F3),
                              tail: true,
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: true,
                              color: Color(0xFFE8E8EE),
                              tail: true,
                              sent: true,
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: false,
                              color: Color(0xFF1B97F3),
                              tail: true,
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: true,
                              color: Color(0xFFE8E8EE),
                              tail: true,
                              sent: true,
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: false,
                              color: Color(0xFF1B97F3),
                              tail: true,
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: true,
                              color: Color(0xFFE8E8EE),
                              tail: true,
                              sent: true,
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: false,
                              color: Color(0xFF1B97F3),
                              tail: true,
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: true,
                              color: Color(0xFFE8E8EE),
                              tail: true,
                              sent: true,
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: false,
                              color: Color(0xFF1B97F3),
                              tail: true,
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: true,
                              color: Color(0xFFE8E8EE),
                              tail: true,
                              sent: true,
                            ),

                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: MessageBar(
                        messageBarColor: AppStyle.mainColor,
                        onSend: (_) => print(_),
                      ),
                    )
                  ],
                ),
              );
            } else {
              return Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.8 - keyboardHeight,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            BubbleNormal(
                              text: 'Prova Hoje?',
                              isSender: false,
                              color: Color(0xFF1B97F3),
                              tail: true,
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            BubbleNormal(
                              text: 'Não',
                              isSender: true,
                              color: Color(0xFFE8E8EE),
                              tail: true,
                              sent: true,
                            ),
                            BubbleNormal(
                              text: 'ok',
                              isSender: false,
                              color: Color(0xFF1B97F3),
                              tail: true,
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: true,
                              color: Color(0xFFE8E8EE),
                              tail: true,
                              sent: true,
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: false,
                              color: Color(0xFF1B97F3),
                              tail: true,
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: true,
                              color: Color(0xFFE8E8EE),
                              tail: true,
                              sent: true,
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: false,
                              color: Color(0xFF1B97F3),
                              tail: true,
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: true,
                              color: Color(0xFFE8E8EE),
                              tail: true,
                              sent: true,
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: false,
                              color: Color(0xFF1B97F3),
                              tail: true,
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: true,
                              color: Color(0xFFE8E8EE),
                              tail: true,
                              sent: true,
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: false,
                              color: Color(0xFF1B97F3),
                              tail: true,
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: true,
                              color: Color(0xFFE8E8EE),
                              tail: true,
                              sent: true,
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: false,
                              color: Color(0xFF1B97F3),
                              tail: true,
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: true,
                              color: Color(0xFFE8E8EE),
                              tail: true,
                              sent: true,
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: false,
                              color: Color(0xFF1B97F3),
                              tail: true,
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: true,
                              color: Color(0xFFE8E8EE),
                              tail: true,
                              sent: true,
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: false,
                              color: Color(0xFF1B97F3),
                              tail: true,
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: true,
                              color: Color(0xFFE8E8EE),
                              tail: true,
                              sent: true,
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: false,
                              color: Color(0xFF1B97F3),
                              tail: true,
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: true,
                              color: Color(0xFFE8E8EE),
                              tail: true,
                              sent: true,
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: false,
                              color: Color(0xFF1B97F3),
                              tail: true,
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            BubbleNormal(
                              text: 'bubble normal with tail',
                              isSender: true,
                              color: Color(0xFFE8E8EE),
                              tail: true,
                              sent: true,
                            ),

                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: MessageBar(
                        messageBarColor: AppStyle.mainColor,
                        onSend: (_) => print(_),
                      ),
                    )
                  ],
                ),
              );
            }

          }
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}