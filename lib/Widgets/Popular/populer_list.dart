import 'package:animal_wiki/Widgets/Popular/list_card.dart';
import 'package:flutter/material.dart';

class PopularList extends StatelessWidget {
  const PopularList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.48,
      child: ListView(
        children: [
          ListCard(subtitle: 'Lions',imgasset: 'lib/img/leon.png',),
          ListCard(subtitle: 'Tigre',imgasset: 'lib/img/tiger.png',),
          ListCard(subtitle: 'Tortue',imgasset: 'lib/img/turtle.png',),
          ListCard(subtitle: 'Elephant', imgasset: 'lib/img/elephant.png',),
        ],
            ),
    );
  }
}
