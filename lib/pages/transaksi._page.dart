// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rijix_laundy_app/models/trasnsaksi.dart';
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
          child: Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColor.whitebg,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15)),
              ),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: transaksiList.reversed.toList(),
                ),
              ),
            ),
          ),
        )
      ]),
    ));
  }

  Widget test = transaksiCard("School", "1", "25.000", "Progress");
}

class transaksiCard extends StatelessWidget {
  Map<String, String> imgShoes = {
    "school": "assets/images/school.png",
    "sneakers": "assets/images/sneakers.png",
    "work": "assets/images/work.png",
    "sport": "assets/images/sport.png",
  };

  String type = '';
  String count = '';
  String price = '';
  String status = '';

  transaksiCard(this.type, this.count, this.price, this.status);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 15, 8, 8),
      child: Container(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
        height: 190,
        width: 350,
        decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                  color: AppColor.grey,
                  blurRadius: 0.9,
                  offset: Offset(0, 0.3),
                  blurStyle: BlurStyle.normal),
              BoxShadow(
                  spreadRadius: 3,
                  color: AppColor.whitebg,
                  blurRadius: 2,
                  offset: Offset(0.1, 0.1),
                  blurStyle: BlurStyle.outer)
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //baris pertama
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.cloud_circle_rounded,
                          color: AppColor.green,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Malang",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: AppColor.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Laundry Terdekat",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: AppColor.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "Hari Ini",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: AppColor.black, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              //garis pembatas
              Divider(
                thickness: 0.2,
                color: AppColor.black,
              ),
              SizedBox(
                height: 10,
              ),
              //baris2
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Image.asset(
                        '${imgShoes[type]}',
                        height: 40,
                        width: 40,
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$type Wash',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: AppColor.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '$count pcs',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: AppColor.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),
              //baris 3
              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rp $price',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: AppColor.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: status == "Progress"
                              ? AppColor.orangebg
                              : AppColor.greenbg),
                      child: Text(
                        '$status',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: status == 'Progress'
                                ? AppColor.orange
                                : AppColor.green),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
