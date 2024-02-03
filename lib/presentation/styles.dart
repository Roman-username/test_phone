import 'package:flutter/material.dart';

const kTextStyleS16w600 = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  color: kMainTextColor,
);
const kTextStyleS15w600 = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w600,
  color: kMainTextColor,
);
const kTextStyleS14w400 = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: kMainTextColor,
);
const kUnselectedBottomNavBarLabelStyle = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w700,
  color: kSecondaryTextColor,
);
const kSelectedBottomNavBarLabelStyle = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w700,
  color: kMainTextColor,
);
const kFilledButtonTextStyle = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w500,
  color: kSecondaryTextColor,
);

const kPrimaryColor = Color(0xFFBFFF07);
const kSurfaceColor = Color(0xFFF5F7FA);
const kMainTextColor = Color(0xFF29364E);
const kSecondaryTextColor = Color(0xFF8693A3);

class CustomIcons {
  CustomIcons._();

  static const String _fontFamily = 'customIcons';

  static const IconData contact = IconData(0xe904, fontFamily: _fontFamily);
  static const IconData burger_menu_left =
      IconData(0xe902, fontFamily: _fontFamily);
  static const IconData chart_column =
      IconData(0xe901, fontFamily: _fontFamily);
  static const IconData message = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData phone = IconData(0xe905, fontFamily: _fontFamily);
  static const IconData home = IconData(0xe903, fontFamily: _fontFamily);
}

final lightTheme = ThemeData(
  useMaterial3: true,
  primaryColor: kPrimaryColor,
  scaffoldBackgroundColor: Colors.white,
  iconButtonTheme: IconButtonThemeData(
    style: IconButton.styleFrom(backgroundColor: kSurfaceColor),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    titleSpacing: 8,
    titleTextStyle: kTextStyleS16w600.copyWith(color: kMainTextColor),
    actionsIconTheme: const IconThemeData(size: 18),
  ),
  cardTheme: const CardTheme(color: kSurfaceColor),
  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 8),
        backgroundColor: Colors.white,
        foregroundColor: kSecondaryTextColor,
        textStyle: kFilledButtonTextStyle),
  ),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(
      vertical: 13,
      horizontal: 16,
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(10),
    ),
    filled: true,
    fillColor: Colors.white,
  ),
  checkboxTheme: CheckboxThemeData(
    checkColor: MaterialStateProperty.all(Colors.black),
    fillColor: MaterialStateProperty.all(Colors.white),
    overlayColor: MaterialStateProperty.all(kPrimaryColor.withAlpha(100)),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
    side: BorderSide.none,
  ),
);
