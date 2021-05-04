import 'package:casi_app/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class AcademicWeekPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget showAcademicWeekDays({String title, Widget subtitle, List images}) {
      return Column(
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // subtitle,
                Container(
                  height: 380,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: images
                        .map((e) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 320,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(e),
                                  ),
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Colors.teal[300],
      appBar: AppBarWidget(title: "Semana acadêmica"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            showAcademicWeekDays(title: "Segunda-feira - 03/05/2021", images: [
              'assets/imgs/P_20210503_01.jpg',
              'assets/imgs/P_20210503_02.jpg'
            ]),
            showAcademicWeekDays(title: "Terça-feira - 04/05/2021", images: [
              'assets/imgs/P_20210504_01.jpg',
              'assets/imgs/P_20210504_02.jpg',
              'assets/imgs/P_20210504_03.jpg'
            ]),
            showAcademicWeekDays(title: "Sexta-feira - 05/05/2021", images: [
              'assets/imgs/P_20210505_01.jpg',
              'assets/imgs/P_20210505_02.jpg',
              'assets/imgs/P_20210505_03.jpg',
              'assets/imgs/P_20210505_04.jpg'
            ]),
          ],
        ),
      ),
    );
  }
}
