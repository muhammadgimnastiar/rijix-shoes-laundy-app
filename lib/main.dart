import 'package:flutter/material.dart';
import 'package:flutter_laundry_app/pages/details.dart';
import 'package:flutter_laundry_app/pages/picktime.dart';
import 'package:flutter_laundry_app/utils/fade_animation.dart';
import 'package:flutter_laundry_app/utils/slide_route.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_laundry_app/theme/colors.dart';
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
    Center(child: Text("Home", style: TextStyle(fontSize: 72),)),
    Center(child: Text("History", style: TextStyle(fontSize: 72),)),
    Center(child: Text("Acount", style: TextStyle(fontSize: 72),)),
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
      backgroundColor: const Color(0xffF1F1F1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('Laundry',
            style: GoogleFonts.inter(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w600)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {},
        ),
      ),
      
      body: screen[indexnav],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          
          backgroundColor: Colors.white,
          indicatorColor: Colors.greenAccent.shade100,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            )
          ),
        child: NavigationBar(
          height: 67,
          selectedIndex: indexnav,
          onDestinationSelected: (indexnav)=>
          setState( () => this.indexnav = indexnav),
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
              NavigationDestination(
              icon: Icon(Icons.view_agenda_outlined),
              selectedIcon: Icon(Icons.view_agenda_rounded),
              label: 'History',
            ),NavigationDestination(
              icon: Icon(Icons.account_box_outlined),
              selectedIcon: Icon(Icons.account_box_rounded, color: Color(0xFF6DC1A4),),
              label: 'Account',
            ),
          ],),
      ),
    );
  }
}
