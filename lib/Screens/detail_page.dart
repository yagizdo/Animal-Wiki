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
                  child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(right : 202.0,),
                    child: Image.asset('lib/img/tiger2.png'),
                  ),
                  )
              ),
              Expanded(
                  flex : 4,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left : 30.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right : 25.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children : [
                                  Text(title,style: TextStyle(fontSize: 30,color: HexColor('#2DA9DE'),fontWeight: FontWeight.bold)),
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
                          Text(desc),
                        ],
                      ),
                    ),
                  )),
            ],
        ),
      ),
    );
  }
}
