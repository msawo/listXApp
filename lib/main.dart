import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './common.dart';
import './screen/homePage.dart';

void main() => runApp(ListXApp());

class ListXApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Color(0xffFF385C),
        fontFamily: 'FiraSans',
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              button: TextStyle(color: white),
            ),
      ),
      home: HomePage(),
    );
  }
}
