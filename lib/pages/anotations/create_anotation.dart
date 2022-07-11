import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import '../../models/tag_state.dart';
import '../../style/app_style.dart';
import '../login_page.dart';


var suggestTag = [
  "Matemática",
  "Português",
  "Física",
  "Química",
  "Inglês",
  "Espanhol",
  "Biologia",
  "Geografia",
];

class CreateAnotation extends StatefulWidget {
  const CreateAnotation({Key? key}) : super(key: key);

  @override
  State<CreateAnotation> createState() => _CreateAnotationState();
}

class _CreateAnotationState extends State<CreateAnotation> {

  final controller = Get.put(TagStateController());
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
              child: LoginPage(),
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
      body: LayoutBuilder(
          builder: (_, constraints) {
            return Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
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
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
                    child: AutoSizeText(
                      "Minhas Anotações",
                      style: GoogleFonts.roboto(
                        fontSize: 22,
                        color: AppStyle.titleColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
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
                        SizedBox(width: constraints.maxWidth * .25),
                        TextButton(
                          onPressed: (){
                            showModalBottomSheet(
                                isScrollControlled: true,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(28), topLeft: Radius.circular(28))
                                ),
                                backgroundColor: Color(0xffF1F3F5),
                                context: context,
                                builder: (context) => Container(
                                  height: MediaQuery.of(context).size.height * 0.95,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(left: 30, top: 50),
                                        child: Text("Adicionar Tags",
                                          style: GoogleFonts.roboto(
                                              color: AppStyle.secondColor,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16
                                          ),),
                                      ),
                                      Column(
                                        children: [
                                          SizedBox(height: 10,),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: TypeAheadField(
                                                suggestionsBoxDecoration: SuggestionsBoxDecoration(
                                                  elevation: 2.0,
                                                ),
                                                textFieldConfiguration: TextFieldConfiguration(
                                                  controller: textController,
                                                  onEditingComplete: () {
                                                    controller.ListTags.add(textController.text);
                                                    textController.clear();
                                                  },
                                                  autofocus: false,
                                                  style: DefaultTextStyle.of(context).style.copyWith(
                                                    fontSize: 14,),
                                                  decoration: InputDecoration(
                                                      fillColor: Colors.white,
                                                      filled: true,
                                                      border: UnderlineInputBorder(
                                                          borderRadius: BorderRadius.circular(20)
                                                      ),
                                                      hintText: 'Nova tag'
                                                  ),
                                                ),
                                                suggestionsCallback: (String pattern) {
                                                  return suggestTag.where(
                                                          (e) => e.toLowerCase().contains(pattern.toLowerCase()));
                                                },
                                                itemBuilder: (BuildContext context, String itemData) {
                                                  return ListTile(leading:
                                                  Icon(Icons.tag, color: Color(0xff403B91),),
                                                    focusColor: Color(0xff403B91),
                                                    title: Text(itemData, style: TextStyle(
                                                        color: Color(0xff403B91)
                                                    ),
                                                    ),
                                                  );
                                                },
                                                onSuggestionSelected: (String suggestion) => controller.ListTags.add(suggestion)
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Obx(() => controller.ListTags.length == 0 ? Center(
                                            child: Text('Sem tags selecionadas', style: GoogleFonts.roboto(
                                                fontSize: 16,
                                                color: Color(0xff4263EB)
                                            ),),
                                          ): Wrap(
                                            children: controller.ListTags.map(
                                                    (element) => Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 4),
                                                  child: Chip(label: Text(element, style: TextStyle(
                                                    color:Color(0xff4263EB),
                                                  ),
                                                  ),
                                                    backgroundColor: AppStyle.mainColor,
                                                    elevation: 3,
                                                    deleteIcon: Icon(Icons.clear),
                                                    onDeleted: () => controller.ListTags.remove(element),
                                                  ),
                                                )).toList(),
                                          ))

                                        ],
                                      )
                                    ],
                                  ),
                                )
                            );
                          },
                          child: Row(
                            children: [
                              Icon(Icons.add),
                              Text("Adicionar Tags")
                            ],
                          ),
                          style: TextButton.styleFrom(
                              backgroundColor: AppStyle.mainColor,
                              primary: Color(0xFF4263EB)
                          ),
                        ),
                        ElevatedButton(
                          onPressed: (){},
                          child: Row(
                            children: [
                              Icon(Icons.add),
                              SizedBox(width: 5),
                              Text("Salvar")
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                              primary: AppStyle.secondColor
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 50)
                ],
              ),
            );
          }
      ),
    );
  }
}