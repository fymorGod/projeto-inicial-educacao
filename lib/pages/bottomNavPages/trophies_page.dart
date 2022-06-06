import 'package:flutter/material.dart';

class TrophiesPage extends StatefulWidget {
  const TrophiesPage({Key? key}) : super(key: key);

  @override
  State<TrophiesPage> createState() => _TrophiesPageState();
}

class _TrophiesPageState extends State<TrophiesPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
            'Trophies Page'
        ),
      )
    );
  }
}
