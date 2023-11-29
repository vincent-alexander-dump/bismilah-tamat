import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue600,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray10002,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
      
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink10001.withOpacity(0.33),
      );

  static BoxDecoration get fillPink10001 => BoxDecoration(
        color: appTheme.pink10001,
      );


 
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: appTheme.gray200,
        border: Border(
          bottom: BorderSide(
            color: appTheme.black900,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineBlue => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.blue600,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius get circleBorder15 => BorderRadius.circular(
        15.h,
      );
}
