import 'package:flutter/material.dart';

class CalanderPage extends StatefulWidget {
  const CalanderPage({Key? key}) : super(key: key);

  @override
  State<CalanderPage> createState() => _CalanderPageState();
}

class _CalanderPageState extends State<CalanderPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
            'Calander Page'
        ),
      )
    );
  }
}
