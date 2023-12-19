import 'dart:ui';
import 'package:flutter/src/painting/text_style.dart';
import 'package:dice_app_bloc/utils/app_colors.dart';
import 'package:dice_app_bloc/utils/extensions.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static TextStyle regularWhite20 = GoogleFonts.dmSans(
    textStyle: TextStyle(
        fontSize: 20.sp, color: AppColors.white, fontWeight: FontWeight.w700),
  );

  static TextStyle regularBlack20 = GoogleFonts.dmSans(
    textStyle: TextStyle(
        fontSize: 20.sp,
        color: AppColors.darkerTextColor,
        fontWeight: FontWeight.w700),
  );
}
