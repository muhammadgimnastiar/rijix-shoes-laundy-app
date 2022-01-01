// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rijix_laundy_app/pages/details.dart';
import 'package:rijix_laundy_app/pages/picktime.dart';
import 'package:rijix_laundy_app/theme/colors.dart';
import 'package:rijix_laundy_app/utils/fade_animation.dart';
import 'package:rijix_laundy_app/utils/slide_route.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rijix_laundy_app/widget/home_info_card.dart';
import 'package:rijix_laundy_app/widget/shoes_type_menu.dart';

class HomePage extends StatelessWidget {
  //Tampilan Home

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Text.rich(TextSpan(
                text: "Selamat Datang\n\n",
                style: TextStyle(
                    color: AppColor.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
                children: [
                  TextSpan(
                    text: "Muhammad Gimnastiar",
                    style: TextStyle(
                        color: AppColor.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  )
                ])),
          ),
          InfoCard(),
          ShoesItem(context),
        ],
      ),
    ));
  }
}
