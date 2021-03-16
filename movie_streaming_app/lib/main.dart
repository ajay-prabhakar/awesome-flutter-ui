import 'package:flutter/material.dart';
import 'package:movie_streaming_app/views/movie_screen.dart';

import 'views/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xff091A2A),
        accentColor: Color(0xffE50914),
        fontFamily: 'Poppins',
      ),
      home: HomePage(),
    );
  }
}
