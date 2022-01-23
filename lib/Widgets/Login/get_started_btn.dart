import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class GStartedBtn extends StatelessWidget {
  const GStartedBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.only(top : 10.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 1.2,
          height: MediaQuery.of(context).size.height / 14,
          child: ElevatedButton(
            child: Text('Get Started',style: TextStyle(color: HexColor('#6AC3E9')),),
              onPressed: () {

              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.white, //background color of button
                  side: BorderSide(width:1, color:HexColor('#6AC3E9')), //border width and color
                  elevation: 0, //elevation of button
                  shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(20)
                  ),
              )
          ),
        ),
      );
  }
}
