import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key,required this.title,required this.desc}) : super(key: key);
   final String title;
   final String desc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(right : 202.0,),
                    child: Image.asset('lib/img/tiger2.png'),
                  )
              ),
              Expanded(
                  flex : 4,
                  child: Padding(
                    padding: const EdgeInsets.only(left : 30.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right : 25.0),
                          child: Padding(
                            padding: const EdgeInsets.only(top : 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children : [
                                  Text(title,style: TextStyle(fontSize: 30,color: HexColor('#2DA9DE'),fontWeight: FontWeight.w900)),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right : 20.0),
                                        child: Icon(Icons.star_border,color: HexColor('#2DA9DE')),
                                      ),
                                      Icon(Icons.share_outlined,color: HexColor('#2DA9DE'),),
                                    ],
                                  )
                                ]
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 300,
                            child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Text(desc,style: TextStyle(fontSize: 18,color: Colors.grey[500],fontWeight: FontWeight.bold),)
                            )
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top : 10,right : 25.0),
                          child: ElevatedButton(
                            onPressed: () {},
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
                                  'Get Started',
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
        ),
      ),
    );
  }
}
