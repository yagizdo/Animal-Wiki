import 'package:animal_wiki/Screens/detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ListCard extends StatelessWidget {
  ListCard({Key? key,required this.subtitle,required this.imgasset}) : super(key: key);
  String subtitle;
  String imgasset;
  String desc = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dolor vulputate duis velit accumsan. Non, dolor amet, eleifend elit. Nisl leo ac morbi feugiat in in elit. Mattis eget augue dolor aliquam. Ultrices eget bibendum dis id parturient purus arcu. Congue tellus cras in ac elementum augue. Sed integer accumsan suscipit malesuada.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dolor vulputate duis velit accumsan. Non, dolor amet, eleifend elit. Nisl leo ac morbi feugiat in in elit. Mattis eget augue dolor aliquam. Ultrices eget bibendum dis id parturient purus arcu. Congue tellus cras in ac elementum augue. Sed integer accumsan suscipit malesuada.';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5,left : 35.0),
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))
        ),
        margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        color: Colors.white,
        child: (
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(title: subtitle, desc:desc ),));
          },
          contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          title: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('Mammifère',style: TextStyle(fontSize: 13,color: HexColor('#2DA9DE')),),
          ),
          subtitle: Text(subtitle,style: TextStyle(fontSize: 25,color: HexColor('#2DA9DE'),fontWeight: FontWeight.w600),),
          trailing: Image.asset(imgasset,),
        )
        ),
      ),
    );
  }
}
