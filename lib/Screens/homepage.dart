import 'package:animal_wiki/Widgets/Popular/list_card.dart';
import 'package:animal_wiki/Widgets/Popular/populer_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.white,
            ),
            centerTitle: true,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left : 55.0),
                child: Text('Animal Wiki',style: TextStyle(color: HexColor('#6AC3E9'),fontSize: 30,fontWeight: FontWeight.w800),),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left : 55.0),
                      child: TabBar(
                        unselectedLabelColor: HexColor('#2DA9DE'),
                        unselectedLabelStyle: const TextStyle(fontSize: 12),
                        labelStyle: const TextStyle(fontSize: 12),
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
                          verticalPadding: 30,
                          color: HexColor('#3E83A0'),
                          bottomLeftRadius: 20,
                          bottomRightRadius: 20,
                          topRightRadius: 20,
                          topLeftRadius: 20,
                        ),
                      ),
                    )
                  )
              ),
              Expanded(
                  flex: 5,
                  child: Container(
                    child: TabBarView(
                      children: [
                        Column(children: [PopularList()],),
                        Column(children: [Text('Mammalians')],),
                        Column(children: [Text('Amphibiens')],),
                        Column(children: [Text('Oiseaux')],),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
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
