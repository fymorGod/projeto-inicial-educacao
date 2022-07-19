import 'package:codeone/ProgessHUD.dart';
import 'package:codeone/api/api_service.dart';
import 'package:codeone/models/login_model.dart';
import 'package:codeone/pages/bar_item_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import '../style/app_style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final scaffoldkey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> globalFormkey = new GlobalKey<FormState>();
  late LoginRequestModel requestModel;
  bool isApiCallProcess = false;

  @override
  void initState(){
    super.initState();
    requestModel = new LoginRequestModel(mat: '', password: '');
  }
  @override
  Widget build(BuildContext context){
    return ProgressHUD(
        child: _uiSteup(context),
        inAsyncCall: isApiCallProcess,
        opacity: 0.3,
    );
  }

  @override
  Widget _uiSteup(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppStyle.secondColor,
      body: LayoutBuilder(
          builder: (_,constraints) {
            return Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: Center(
                child: Form(
                  key: globalFormkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 50.0),
                        child: Image.asset("assets/images/logo-educacao.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0, bottom: 10.0, left: 30.0, right: 30.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "753.145.574-01",
                            labelStyle: TextStyle(
                                fontSize: 24,
                                color: Colors.black26
                            ),
                            border: UnderlineInputBorder(
                                borderRadius:BorderRadius.circular(8.0)),
                          ),
                          onSaved: (input) => requestModel.mat = input!,
                          obscureText: false,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 30.0, right: 30.0),
                        child: TextFormField(
                          onSaved: (input) => requestModel.password = input!,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "*******************",
                            labelStyle: TextStyle(
                                fontSize: 28 ,
                                color: Colors.black26
                            ),
                            border: UnderlineInputBorder(
                                borderRadius:BorderRadius.circular(8.0)),
                          ),
                          obscureText: true,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 20,
                        child: Text(
                          "Esqueceu sua senha?",
                          style: GoogleFonts.roboto(
                              color: Colors.white70
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: constraints.maxWidth * 0.70,
                        height: constraints.maxHeight * 0.07,
                        child: ElevatedButton(
                          onPressed: () {
                            if(validateAndSave()){
                              setState(() {
                                isApiCallProcess = true;
                              });
                              APIService apiService = new APIService();
                              apiService.login(requestModel).then((value){
                                setState((){
                                  isApiCallProcess = false;
                                });
                                if(value.token.isNotEmpty){
                                  Navigator.push(context, PageTransition(
                                      child: BarItemPage(),
                                type:  PageTransitionType.fade,
                                duration: const Duration(milliseconds: 10)
                                    )
                                  );
                                }
                              });
                              print(requestModel.toJson());
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF364FC7),
                          ),
                              child: Text("Entrar", style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18
                                ),
                              ),
                            ),
                      )
                    ],
                  ),
                ),
              ),

            );
          }
      ),
    );
  }
  bool validateAndSave(){
    final form = globalFormkey.currentState;
    if(form!.validate()){
      form.save();
      return true;
    }
    return false;
  }
}