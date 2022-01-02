import 'package:flutter/material.dart';
import 'package:rijix_laundy_app/pages/details.dart';
import 'package:rijix_laundy_app/pages/home_page.dart';
import 'package:rijix_laundy_app/pages/picktime.dart';
import 'package:rijix_laundy_app/pages/test_page.dart';
import 'package:rijix_laundy_app/pages/transaksi._page.dart';
import 'package:rijix_laundy_app/utils/slide_route.dart';
import 'package:rijix_laundy_app/theme/colors.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) {
        if (settings.name == '/detail') {
          return RouteAnimation.slide(settings, const DetailPage());
        } else if (settings.name == '/picktime') {
          return RouteAnimation.slide(settings, const PickTimePage());
        }
        return RouteAnimation.slide(settings, const MyApp());
      },
    ));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int indexnav = 0;

  final screen = [
    HomePage(),
    TransaksiPage(),
    Center(
        child: Text(
      "Acount",
      style: TextStyle(fontSize: 72),
    )),
  ];

  final List<Map<String, String>> services = [
    {'name': 'School wash', 'image': 'school.png'},
    {'name': 'Sneacker wash', 'image': 'sneakers.png'},
    {'name': 'Work wash', 'image': 'work.png'},
    {'name': 'Sport wash', 'image': 'sport.png'},
  ];

  int? selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whitebg,
      body: screen[indexnav],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            backgroundColor: Colors.white,
            indicatorColor: AppColor.greenbg,
            labelTextStyle: MaterialStateProperty.all(
              TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: AppColor.green),
            )),
        child: NavigationBar(
          height: 67,
          selectedIndex: indexnav,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          animationDuration: Duration(seconds: 1),
          onDestinationSelected: (indexnav) =>
              setState(() => this.indexnav = indexnav),
          destinations: [
            NavigationDestination(
              icon: Icon(
                Icons.home_outlined,
                color: AppColor.grey,
              ),
              selectedIcon: Icon(
                Icons.home_rounded,
                color: AppColor.green,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.view_agenda_outlined,
                color: AppColor.grey,
              ),
              selectedIcon: Icon(
                Icons.view_agenda_rounded,
                color: AppColor.green,
              ),
              label: 'Transaksi',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.account_box_outlined,
                color: AppColor.grey,
              ),
              selectedIcon: Icon(
                Icons.account_box_rounded,
                color: AppColor.green,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  getWidget() {
    return (indexnav == 0) ? HomePage() : Container();
  }
}
