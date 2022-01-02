import 'package:rijix_laundy_app/theme/colors.dart';
import 'package:flutter/material.dart';

class TransaksiBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(children: [
        Row(children: [
          Text.rich(TextSpan(
            text: "Daftar Transaksi",
            style: TextStyle(
                color: AppColor.black,
                fontSize: 26,
                fontWeight: FontWeight.bold),
          )),
        ]),
        // ignore: prefer_const_constructors
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text.rich(TextSpan(
              text: "Transaksi kamu akan muncul di sini",
              style: TextStyle(
                  color: AppColor.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            )),
            // ignore: prefer_const_constructors
          ],
        ),
      ]),
    );
  }
}
