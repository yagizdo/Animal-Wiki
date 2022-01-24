import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomTF extends StatelessWidget {
  CustomTF({Key? key, required this.hint,required this.controller,required this.obsecure}) : super(key: key);
  String hint;
  bool obsecure;
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecure,
      controller: controller,
      style: TextStyle(color: HexColor('#80CBEC'),fontWeight: FontWeight.w600),
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
