import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Animal Wiki',style: TextStyle(color: Colors.black),),
            bottom: TabBar(
              unselectedLabelColor: HexColor('#2DA9DE'),
              unselectedLabelStyle: TextStyle(fontSize: 12),
              indicatorPadding: EdgeInsets.zero,
              isScrollable: true,
              labelStyle: TextStyle(fontSize: 12),
              labelColor: Colors.white,
              tabs: const [
                Tab(
                  text: 'Popular',
                ),
                Tab(
                  text: 'Mammalians',
                ),
                Tab(
                  text: 'Amphibiens',
                ),
                Tab(
                  text: 'Oiseaux',
                ),
              ],
              indicator: RectangularIndicator(
                verticalPadding: 8,
                color: HexColor('#3E83A0'),
                bottomLeftRadius: 20,
                bottomRightRadius: 20,
                topRightRadius: 20,
                topLeftRadius: 20,
              ),
            ),
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
              iconSize: 35,
              padding: const EdgeInsets.only(left: 55),
              color: HexColor('#6AC3E9'),
              icon: const Icon(Icons.search),
              onPressed: () {
                print('clicked');
              },
            ),
            actions: [
              IconButton(
                padding: const EdgeInsets.only(right: 20),
                color: HexColor('#6AC3E9'),
                icon: const Icon(Icons.menu),
                onPressed: () {
                  print('clicked 2');
                },
              )
            ],
          ),
          body: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                  )),
              Expanded(
                  flex: 4,
                  child: Container(
                    child: TabBarView(
                      children: [
                        Column(children: [Text('Popular')],),
                        Column(children: [Text('Mammalians')],),
                        Column(children: [Text('Amphibiens')],),
                        Column(children: [Text('Oiseaux')],),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [HexColor('#56CCF2'), HexColor('#2F80ED')],
                      ),
                    ),
                  )),
            ],
          )),
    );
  }
}
