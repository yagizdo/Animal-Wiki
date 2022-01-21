import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomTF extends StatelessWidget {
  CustomTF({Key? key, required this.hint}) : super(key: key);
  String hint;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: HexColor('#80CBEC')),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: HexColor('#80CBEC')),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: HexColor('#80CBEC')),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: HexColor('#80CBEC')),
        ),
      ),
    );
  }
}
