// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rijix_laundy_app/theme/colors.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 5, 20, 15),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        color: AppColor.purple,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: AppColor.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text.rich(TextSpan(
                text: "Malang",
                style: TextStyle(
                    color: AppColor.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              )),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.local_laundry_service_rounded,
                color: AppColor.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text.rich(TextSpan(
                text: "Ada banyak Toko Laundry di sekitar \nkamu.",
                style: TextStyle(
                    color: AppColor.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              )),
            ],
          )
        ],
      ),
    );
  }
}
