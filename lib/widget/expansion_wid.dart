import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
import 'package:page_transition/page_transition.dart';
import '../interfaces/atv.dart';
import 'package:pod_player/pod_player.dart';

import '../pages/Comentarios.dart';
import '../pages/bottomNavPages/anotations_page.dart';
import '../quizz/startQuizz.dart';
import '../style/app_style.dart';


class ExpansionWid extends StatefulWidget {



  const ExpansionWid({Key? key}) : super(key: key);
  @override
  State<ExpansionWid> createState() => _ExpansionWidState();
}

class _ExpansionWidState extends State<ExpansionWid> {
  late final PodPlayerController controller;

  @override
  void initState() {
    controller = PodPlayerController(
      playVideoFrom: PlayVideoFrom.network(
        'https://cdn.jmvstream.com/vod/vod_10807/f/q0yj22rl2jc56df/h/4/playlist.m3u8',
      ),
    )..initialise();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  List<Atv> atvs = [
    Atv(1, "Aula 1", "Aula 1 sobre matemática básica", false),
    Atv(2, "Aula 2", "Aula 2 sobre a trigonometria", false),

  ];

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: ExpansionPanelList.radio(
        elevation: 1,
        children: atvs.map((atv) {
          return ExpansionPanelRadio(
            backgroundColor: AppStyle.mainColor,
            canTapOnHeader: true,
            value: atv.id,
            headerBuilder: (bc, status) {
              return SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/play-button.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(atv.name)
                    ],
                  ),
                ),
              );
            },
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.98,
                decoration: BoxDecoration(
                    color: Color(0xffF6FAFF),
                    borderRadius: BorderRadius.circular(28)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: StartQuizz(),
                                    type: PageTransitionType.fade,
                                    duration: const Duration(milliseconds: 10)));
                          },
                          child: Text("Atividade 1")),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .37,
                        width: MediaQuery.of(context).size.width,
                        child: PodVideoPlayer(controller: controller),
                      ),
                      SizedBox(height: 5),
                      Container(
                        height: 35,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context, PageTransition(
                                    child: Comentarios(),
                                    type: PageTransitionType.fade,
                                    duration: const Duration(milliseconds: 10)
                                )
                                );
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.chat,
                                    color: Color(0xff4263EB),
                                  ),
                                  SizedBox(width: 1),
                                  Text(
                                    "Comentários",
                                    style: TextStyle(
                                      color: Color(0xff4263EB),
                                    ),
                                  )
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                elevation: 0.5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18)),
                                primary: AppStyle.mainColor,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                showBottomSheet(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(28)),
                                    ),
                                    backgroundColor: AppStyle.mainColor,
                                    context: context,
                                    builder: (BuildContext) {
                                      return Container(
                                        width: MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(28),
                                                topLeft: Radius.circular(28))),
                                        child: FractionallySizedBox(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: AppStyle.mainColor,
                                                borderRadius: BorderRadius.only(topRight: Radius.circular(28), topLeft: Radius.circular(28))
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    Icon(
                                                      Icons.library_books,
                                                      color: Color(0xff4263EB),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      "Anotações",
                                                      style: TextStyle(
                                                        color: Color(0xff868E96),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Expanded(
                                                    child: Padding(
                                                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                                      child: Container(
                                                        padding: EdgeInsets.only(left: 10.0),
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius.circular(20)
                                                        ),
                                                        child: TextField(
                                                          expands: true,
                                                          maxLines: null,
                                                          autofocus: true,
                                                          decoration: InputDecoration(
                                                            enabledBorder: InputBorder.none,
                                                            errorBorder: InputBorder.none,
                                                            disabledBorder: InputBorder.none,
                                                            focusedBorder: InputBorder.none,
                                                            focusColor: AppStyle.titleColor,
                                                            fillColor: AppStyle.titleColor,
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: AppStyle.mainColor
                                                  ),
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                    children: [
                                                      SizedBox(width: MediaQuery.of(context).size.width * .25),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      right: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                          0.47),
                                                  child: ElevatedButton.icon(
                                                    style: ElevatedButton.styleFrom(
                                                      primary: AppStyle.mainColor,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius.circular(28),
                                                      ),
                                                    ),
                                                    onPressed: () {
                                                      Navigator.push(context, PageTransition(
                                                          child: AnotationPage(),
                                                          type:  PageTransitionType.fade,
                                                          duration: const Duration(milliseconds: 10)
                                                      ),
                                                      );
                                                    },
                                                    label: Text(
                                                      'Minhas anotações',
                                                      style: GoogleFonts.roboto(
                                                        color: Color(0xff4263EB),
                                                      ),
                                                    ),
                                                    icon: Icon(
                                                      Icons.bookmark,
                                                      color: Color(0xff364FC7),
                                                    ),
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    });
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.library_books,
                                    color: Color(0xff4263EB),
                                  ),
                                  SizedBox(width: 1),
                                  Text(
                                    "Anotações",
                                    style: TextStyle(
                                      color: Color(0xff4263EB),
                                    ),
                                  )
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                elevation: 0.5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18)),
                                primary: AppStyle.mainColor,
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: AppStyle.mainColor,
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(28)
                                    )
                                ),
                                onPressed: () {}, child: Row(
                              children: [
                                LikeButton(
                                  size: 25,
                                ),
                                Text('Favoritos', style: TextStyle(color: Color(0xff4263EB)),)
                              ],

                            )
                            )

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),


                    ],
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}