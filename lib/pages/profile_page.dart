// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rijix_laundy_app/theme/colors.dart';
import 'package:rijix_laundy_app/widget/profile_header.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      color: AppColor.white,
      child: Column(
        children: [
          //
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Row(
              children: [
                Text(
                  "Profile ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ProfileHeader(),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColor.whitebg,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: AppColor.green,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                          color: AppColor.black, style: BorderStyle.solid),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Identitas",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColor.white),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Label("Nama"),
                  Field("Muhammad Gimnastiar"),
                  Label("Asal"),
                  Field("Tabalong"),
                  Label("Pekerjaan"),
                  Field("Mahasiswa"),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class Field extends StatelessWidget {
  String field = "";
  Field(final String field) {
    this.field = field;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10, left: 40),
        child: Text(field,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
            )),
      ),
    );
  }
}

class Label extends StatelessWidget {
  String label = "";
  Label(final String label) {
    this.label = label;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(top: 20, bottom: 10, left: 40),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
