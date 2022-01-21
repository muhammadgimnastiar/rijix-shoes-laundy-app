import 'package:flutter/material.dart';

class ProfileHeader extends StatefulWidget {
  @override
  Profile_HeaderState createState() => Profile_HeaderState();
}

class Profile_HeaderState extends State<ProfileHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              height: 80,
              width: 80,
              child: Stack(
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/images/profile/default.png",
                    ),
                    radius: 100,
                  )
                ],
              ),
            )),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Muhammad Gimnastiar",
            style: const TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "0 x Transaksi",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.right,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Pengguna Setia",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
