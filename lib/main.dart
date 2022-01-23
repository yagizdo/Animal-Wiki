import 'package:flutter/material.dart';

import 'Screens/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animal Wiki',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily:  GoogleFonts.poppins().fontFamily,
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}