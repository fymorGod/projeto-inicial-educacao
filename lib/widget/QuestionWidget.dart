import 'package:codeone/quizz/model.dart';
import 'package:codeone/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../pages/bottomNavPages/perfil_page.dart';

class QuestionWidget extends StatefulWidget {
  const QuestionWidget({Key? key}) : super(key: key);

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  late PageController _controller;
  int _questionsNumber = 1;
  int _score = 0;
  bool _isLocked = false;
  @override
  void initState(){
    super.initState();
    _controller = PageController(initialPage: 0);
  }

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
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none_outlined,
            size: 25,
            color: Colors.white,
          ),
          ),
        ],
      ),
      backgroundColor: AppStyle.mainColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text(
                  "TRIGONOMETRIA",
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const SizedBox(
                     height: 10,
                   ),
                   Text(
                       "Atividade 1",
                     style: GoogleFonts.roboto(
                       fontSize: 18,
                       fontWeight: FontWeight.w400,
                       color: Colors.black38
                     ),
                   ),
                   const SizedBox(
                     height: 20,
                   ),
                   Expanded(
                       child: PageView.builder(
                         controller: _controller,
                         itemCount: questions.length,
                         physics: const NeverScrollableScrollPhysics(),
                         itemBuilder: (context, index) {
                           final _question = questions[index];
                           return buildQuestion(_question);
                         },
                       )
                   ),
                 ],
               ),
             ),
              const SizedBox(height: 20),
              _isLocked ? Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 60,
                    child: buildElevatedButton())) : Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 60,
                      child: buildElevatedButton())) ,
              const SizedBox(height: 20),

            ],
          ),
        ),
      );
  }
  Column buildQuestion(Question question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          question.text,
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black54
          ),
        ),
        const SizedBox(height: 20),

        Expanded(
            child: OptionsWidget(
              question: question,
              onClickOption: (option) {
                if(question.isLocked){
                  return;
                }
                else {
                  setState(() {
                    question.isLocked = true;
                    question.selectedOption = option;
                  });
                  _isLocked = question.isLocked;
                  if (question.selectedOption!.isCorrect){
                    _score++;
                  }
                }
              },
            )
        )
      ],
    );
  }

  ElevatedButton buildElevatedButton() {
    return ElevatedButton(
        onPressed: () {
          if(_questionsNumber < questions.length){
            _controller.nextPage(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeInExpo,
            );

            setState((){
              _questionsNumber++;
              _isLocked = false;
            });
          } else {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ResultPage(score: _score),
              )
            );
          }
        },
        style: ElevatedButton.styleFrom(

          primary: AppStyle.secondColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        ),
        child: Text(
          _questionsNumber < questions.length ? "Responder" : "Ver o Resultado",
          style: GoogleFonts.roboto(
            fontSize: 22,
            fontWeight: FontWeight.w700
          ),
        )
    );
  }
}


class OptionsWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClickOption;
  const OptionsWidget({
    Key? key,
    required this.question,
    required this.onClickOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    child: Column(
      children: question.options.map((option) => buildOption(context, option))
          .toList(),
    ),
  );

  Widget buildOption(BuildContext context, Option option){
    final color = getColorForOption(option, question);
    return GestureDetector(
      onTap: ()=> onClickOption(option),
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              option.text,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black54
              ),
            ),
            getIconForOption(option, question)
          ],
        ),
      ),
    );
  }

  Color getColorForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;
    if(question.isLocked){
      if(isSelected){
        return option.isCorrect ? Colors.green : Colors.red;
      } else if(option.isCorrect){
        return AppStyle.mainColor;
      }
    }
    return AppStyle.mainColor;
  }

  Widget getIconForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;
    if(question.isLocked){
        if(isSelected){
          return option.isCorrect
              ? const Icon(Icons.check_circle, color: Colors.green)
              : const Icon(Icons.cancel, color: Colors.red);
      }
    }
    return const SizedBox.shrink();
  }
}

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key, required this.score}) : super(key: key);

  final int score;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              child: PerfilPage(),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom:15.0),
              child: Container(
                child: Image.asset('assets/images/calculadora.png'),
              ),
            ),
            SizedBox(width: 10.0,),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Text(
                "Matemática",
                style: GoogleFonts.roboto(
                    fontSize: 22,
                    color: Colors.white
                ),
              ),
            ),
            SizedBox(height: 20.0,),
          ],
        ),
      ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 35.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18)
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Image.asset("assets/images/banner.png"),
                  Center(
                    child: Text("Quase lá!",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey,
                      fontSize: 18
                      ),
                    ),
                  ),
                  Center(
                    child: Text("Vamos tentar novamente?",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w300,
                          color: Colors.blueGrey,
                          fontSize: 20
                      ),
                    ),
                  ),
                  SizedBox(height: 15)
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: 55,
            child: TextButton(onPressed: (){
              Navigator.push(context, PageTransition(
                  child: QuestionWidget(),
                  type:  PageTransitionType.fade,
                  duration: const Duration(milliseconds: 10)
              )
              );
            },
                style: ElevatedButton.styleFrom(
                  primary: AppStyle.secondColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                ),
                child: Text(
                  "Ver Classificação",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.white
                  ),)
            ),
          ),
        ]
      )
    );
  }
}

