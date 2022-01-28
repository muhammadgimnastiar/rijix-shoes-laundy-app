import 'package:flutter/material.dart';
import 'package:rijix_laundy_app/pages/transaksi._page.dart';
import 'package:rijix_laundy_app/theme/colors.dart';
import 'package:rijix_laundy_app/utils/fade_animation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rijix_laundy_app/models/trasnsaksi.dart';
import 'package:rijix_laundy_app/widget/transaksi_success.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Map<String, Map<String, int>> order = {
    'school': {'price': 10000, 'total': 0},
    'sneakers': {'price': 15000, 'total': 0},
    'work': {'price': 20000, 'total': 0},
    'sport': {'price': 13000, 'total': 0},
  };
  int totalPrice = 0;
  int totalCount = 0;
  String typeorder = "";

  List<Widget> list = [];

  //////////////////////////////
  /// @withflutter
  ///
  /// afifudin.vercel.app
  //////////////////////////////
  @override
  Widget build(BuildContext context) {
    Widget option(
        {String? image,
        String? name,
        String? price,
        String type = "",
        int? delay}) {
      return FadeAnimation(
        delay: delay,
        child: Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/$image',
                  width: 48,
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name!,
                        style: GoogleFonts.inter(fontWeight: FontWeight.w700)),
                    const SizedBox(
                      height: 2,
                    ),
                    Text('$price',
                        style: GoogleFonts.inter(
                            color: Colors.pink, fontWeight: FontWeight.w600))
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (order[type]!['total'] != 0) {
                        order[type]!['total'] = order[type]!['total']! - 1;
                        totalPrice = totalPrice - order[type]!['price']!;
                        totalCount = totalCount - 1;
                      }
                    });
                  },
                  child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300, shape: BoxShape.circle),
                      child: Center(
                          child: Icon(
                        Icons.remove,
                        size: 16,
                        color: Colors.grey.shade800,
                      ))),
                ),
                const SizedBox(
                  width: 8,
                ),
                SizedBox(
                  width: 24,
                  child: Center(
                    child: Text('${order[type]?['total']}',
                        style: GoogleFonts.inter(fontWeight: FontWeight.w700)),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      order[type]!['total'] = order[type]!['total']! + 1;
                      totalPrice = totalPrice + order[type]!['price']!;
                      totalCount = totalCount + 1;
                      typeorder = type;
                    });
                  },
                  child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300, shape: BoxShape.circle),
                      child: Center(
                          child: Icon(
                        Icons.add,
                        size: 16,
                        color: Colors.grey.shade800,
                      ))),
                ),
              ],
            )),
      );
    }

    return Scaffold(
        backgroundColor: const Color(0xffF1F1F1),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text('Add Details',
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black)),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                option(
                    image: 'school.png',
                    name: 'School wash',
                    price: '10.000',
                    type: 'school',
                    delay: 150),
                option(
                    image: 'sneakers.png',
                    name: 'Sneakers wash',
                    price: '15.000',
                    type: 'sneakers',
                    delay: 300),
                option(
                    image: 'work.png',
                    name: 'Work wash',
                    price: '20.000',
                    type: 'work',
                    delay: 450),
                option(
                    image: 'sport.png',
                    name: 'Sport wash',
                    price: '13.000',
                    type: 'sport',
                    delay: 600),
                FadeAnimation(
                  delay: 890,
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                FadeAnimation(
                  delay: 900,
                  child: Text('Total Pesanan: Rp $totalPrice',
                      style: GoogleFonts.inter(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.black)),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: GestureDetector(
          onTap: () {
            print("OK");
            navbarIndex = 1;
            totalTransaksi = totalTransaksi + 1;

            transaksiList.add(transaksiCard(
                typeorder, "$totalCount", '$totalPrice', "Progress"));
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                context: context,
                builder: (context) => SuccessCheckout());

            //navbarIndex = 1;
            //totalTransaksi = totalTransaksi + 1;
            //Navigator.pushNamed(context, '/transaksi');
            //transaksiList.add(transaksiCard(typeorder, "$totalCount", '$totalPrice', "Progress"));

            //Navigator.pushNamed(context, '/picktime');
          },
          child: FadeAnimation(
            delay: 1200,
            child: Container(
              height: 60,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.green,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text('Checkout',
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white)),
                ),
              ),
            ),
          ),
        ));
  }
}
