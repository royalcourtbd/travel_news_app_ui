import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_news_app_ui/config.dart';

const kWhiteColor = Color(0xffffffff);
const kLightWhiteColor = Color(0xffeff5f4);
const kLighterWhiteColor = Color(0xfffcfcfc);

//

const kGreyColor = Color(0xff9397A0);
const kLightGreyColor = Color(0xffa7a7a7);

const kBlueColor = Color(0xff5474FD);
const kLightBlueColor = Color(0xff83b1ff);
const kLighterBlueColor = Color(0xffc1d4f9);

const kDarkBlueColor = Color(0xff19202d);

final double kPaddingHorizontal = Config.blockSizeHorizontal! * 6;
final kBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kBorderRadius),
  borderSide: BorderSide.none,
);
const kBorderRadius = 16.0;

final kPoppinsBold = GoogleFonts.poppins(
  fontWeight: FontWeight.w700,
  color: kDarkBlueColor,
);
final kPoppinsSemiBold = GoogleFonts.questrial(
  fontWeight: FontWeight.w600,
);
final kPoppinsMedium = GoogleFonts.questrial(
  fontWeight: FontWeight.w500,
);
final kPoppinsRegular = GoogleFonts.questrial(
  fontWeight: FontWeight.w700,
);
