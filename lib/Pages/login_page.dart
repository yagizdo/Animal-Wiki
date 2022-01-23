import 'package:animal_wiki/Pages/homepage.dart';
import 'package:animal_wiki/Widgets/Login/forgot_password.dart';
import 'package:animal_wiki/Widgets/Login/get_started_btn.dart';
import 'package:animal_wiki/Widgets/Login/login_btn.dart';
import 'package:animal_wiki/Widgets/Login/login_tf.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);

  final formkey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
                  padding: const EdgeInsets.only(left: 40),
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
                      child: CustomTF(hint: 'Email',controller: emailController,),
                    ),
                    CustomTF(hint: 'Password',controller: passwordController,),
                     Padding(
                      padding: const EdgeInsets.only(top : 20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          if(emailController.text == 'dokumaciyagiz@gmail.com') {
                            if(passwordController.text == '123'){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                              print('Login succesfuly!');
                            }
                            else {
                              print('Password wrong');
                            }
                          } else {
                            print('Login failed');
                            print('Email ${emailController.text}');
                            print('Password ${passwordController.text}');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [HexColor('#4284DB'), HexColor('#29EAC4')]),
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            height: MediaQuery.of(context).size.height / 14,
                            alignment: Alignment.center,
                            child: const Text(
                              'Login',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GStartedBtn(),
                    ForgotPassword(),
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
