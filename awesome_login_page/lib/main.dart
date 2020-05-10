import 'file:///C:/Users/Ajayprabhakarrao/FlutterProjects/flutter-ui/awesome_login_page/lib/utils/constant.dart';
import 'package:awesome_login_page/login_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'awesome login',
      theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          fontFamily: "Poppins",
          textTheme: TextTheme(
            body1: TextStyle(color: kBodyTextColor),
          )),
      home: loginScreen(),
    );
  }
}
