import 'package:flutter/material.dart';

class AnotationPage extends StatefulWidget {
  const AnotationPage({Key? key}) : super(key: key);

  @override
  State<AnotationPage> createState() => _AnotationPageState();
}

class _AnotationPageState extends State<AnotationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
            "Anotation Page"
        ),
      )
    );
  }
}
