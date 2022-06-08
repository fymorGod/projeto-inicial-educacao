import 'package:codeone/pages/bar_item_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';


void main() {
  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BarItemPage(),
      );
  }
}

