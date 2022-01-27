import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rijix_laundy_app/main.dart';
import 'package:rijix_laundy_app/theme/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SpashScreenState createState() => _SpashScreenState();
}

class _SpashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Material(
      child: Container(
        color: AppColor.white,
        height: height,
        width: width,
        child: Column(
          children: [
            Image.asset(
              'assets/images/profile/splashScreen.png',
              width: width,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text("Rijix Shoes Laundy",
                    style: GoogleFonts.poppins(
                        color: AppColor.black,
                        fontSize: 48,
                        decorationThickness: 0,
                        textStyle: TextStyle(fontWeight: FontWeight.w700))),
              ),
            ),
            GestureDetector(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.all(0),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    width: 120,
                    decoration: BoxDecoration(color: AppColor.greenbg),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Mulai",
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  color: AppColor.green)),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: AppColor.green,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              onTap: () {
                splash++;
                Navigator.pushReplacementNamed(context, '/homepage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
