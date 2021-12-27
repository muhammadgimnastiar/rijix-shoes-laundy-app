
import 'package:flutter/material.dart';
import 'package:rijix_laundy_app/pages/details.dart';
import 'package:rijix_laundy_app/pages/home_page.dart';
import 'package:rijix_laundy_app/pages/picktime.dart';

class RoutePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home_page',
      routes: {
        '/home_page' : (context) => HomePage(),
        '/detail_order': (context) => DetailPage(),
         '/detail_order': (context) => PickTimePage(),
      },
    );
  }
}