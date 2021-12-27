import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rijix_laundy_app/theme/colors.dart';


class AppBarr extends StatelessWidget implements PreferredSizeWidget {
  const AppBarr(String );

  @override
  Size get preferredSize => Size.fromHeight(60.0);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.whitebg,
      
    );
  }
}