import 'package:casi_app/pages/about_us/about_us_page.dart';
import 'package:casi_app/pages/academic_week/academic_week_page.dart';
import 'package:casi_app/pages/shop/shop_page.dart';
import 'package:casi_app/pages/warnings/warnings_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    _launchURL() async {
      const url = 'http://casi.inf.furb.br/semana-academica';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    Widget _header() {
      return Container(
        width: double.infinity,
        height: 250,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/imgs/CASI_background.jpg'),
              fit: BoxFit.cover),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width * .7,
            child: MaterialButton(
              child: Text(
                "Acesse o site",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => _launchURL(),
            ),
          ),
        ),
      );
    }

    Widget _listItem(String link, dynamic page) {
      return InkWell(
        onTap: () => {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => page))
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width * .46,
            height: MediaQuery.of(context).size.width * .46,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(link), fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
            ),
          ),
        ),
      );
    }

    Widget _body() {
      return GridView.count(
        shrinkWrap: true,
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        crossAxisCount: 2,
        children: <Widget>[
          _listItem("assets/imgs/academic_week.jpg", AcademicWeekPage()),
          _listItem("assets/imgs/warnings.jpg", WarningsPage()),
          _listItem(
            "assets/imgs/about_us.jpg",
            AboutUsPage(),
          ),
          _listItem(
            "assets/imgs/shop.jpg",
            ShopPage(),
          ),
        ],
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal[300],
        body: SingleChildScrollView(
          child: Column(
            children: [
              _header(),
              _body(),
            ],
          ),
        ),
      ),
    );
  }
}
