import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rijix_laundy_app/theme/colors.dart';

class SuccessCheckout extends StatelessWidget {
  SuccessCheckout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DraggableScrollableSheet(
        maxChildSize: 0.8,
        initialChildSize: 0.8,
        builder: (BuildContext context, scrollController) {
          return Material(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 50),
                    child: Image.asset(
                        'assets/images/profile/checkoutSuccess.png'),
                  ),
                ),
                Text("Transaski Order Berhasil",
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        letterSpacing: 1,
                        textStyle: TextStyle(fontWeight: FontWeight.bold))),
                Divider(),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/transaksi');
                    //Navigator.pushNamed(context, '/picktime');
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColor.green,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Center(
                              child: Text('Lihat Progres',
                                  style: GoogleFonts.inter(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 25,
                              color: AppColor.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
