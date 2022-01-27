import 'package:flutter/material.dart';
import 'package:rijix_laundy_app/main.dart';
import 'package:rijix_laundy_app/pages/details.dart';
import 'package:rijix_laundy_app/pages/home_page.dart';
import 'package:rijix_laundy_app/pages/picktime.dart';
import 'package:rijix_laundy_app/pages/spalsh_page.dart';
import 'package:rijix_laundy_app/pages/transaksi._page.dart';

class RoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/home_page': (context) => HomePage(),
        '/detail_order': (context) => DetailPage(),
        '/pick_time': (context) => PickTimePage(),
        '/transaksi': (context) => TransaksiPage(),
        '/splash': (context) => SplashScreen(),
      },
    );
  }
}
