// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rijix_laundy_app/theme/colors.dart';

import 'package:rijix_laundy_app/widget/transaksibar.dart';

class TransaksiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      color: AppColor.white,
      child: Column(children: [
        TransaksiBar(),
        SizedBox(
          height: 12,
        ),
        Flexible(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.whitebg,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15), topLeft: Radius.circular(15)),
            ),
          ),
        )
      ]),
    ));
  }
}
