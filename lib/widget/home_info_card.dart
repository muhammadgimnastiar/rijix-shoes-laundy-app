import 'package:flutter/material.dart';
import 'package:rijix_laundy_app/theme/colors.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: AppColor.purple,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(20),
      child: Text.rich(TextSpan(
          text: "Berangam Toko Cuci Sepatu Terdekat\n",
          style: TextStyle(
              color: AppColor.white, fontWeight: FontWeight.w600, fontSize: 16),
          children: [
            TextSpan(
              text: "Malang",
              style: TextStyle(
                  color: AppColor.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            )
          ])),
    );
  }
}
