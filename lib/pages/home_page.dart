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
    return Container(
      color: AppColor.white,
      child: SafeArea(
          child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            TopBar(),
            InfoCard(),
            ShoesItem(context),
          ],
        ),
      )),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: [
          Row(
            children: [
              Text.rich(TextSpan(
                text: "Selamat Datang",
                style: TextStyle(
                    color: AppColor.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              )),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.auto_awesome_rounded,
                color: Colors.yellow,
              ),
            ],
          ),
          Row(
            children: [
              Text.rich(TextSpan(
                text: "Muhammad Gimnastiar",
                style: TextStyle(
                    color: AppColor.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              )),
            ],
          )
        ],
      ),
    );
  }
}
