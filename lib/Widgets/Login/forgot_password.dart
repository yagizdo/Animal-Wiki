import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top : 25.0),
      child: TextButton(onPressed: () {

      }, child: Text('Forgot your password?',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: HexColor('#6AC3E9'))),),
    );
  }
}
