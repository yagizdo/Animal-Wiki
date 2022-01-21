import 'package:animal_wiki/Widgets/Login/login_tf.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width / 2.2  ,
                    height: MediaQuery.of(context).size.height / 2.7,
                    child: Image.asset('lib/img/login_img.png')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top : 10,left: 40),
                  child: Text('Welcome\nBack!',style: TextStyle(color: HexColor('#6AC3E9'),fontSize: 35,fontWeight: FontWeight.w700)),
                ),
              ],
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: CustomTF(hint: 'Email'),
                    ),
                    CustomTF(hint: 'Password'),
                  ],
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
