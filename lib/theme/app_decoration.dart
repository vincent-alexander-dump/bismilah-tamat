import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue600,
      );
  static BoxDecoration get fillBlue300 => BoxDecoration(
        color: appTheme.blue300,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray10002,
      );
  static BoxDecoration get fillBluegray100 => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillBluegray10001 => BoxDecoration(
        color: appTheme.blueGray10001,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillOnError => BoxDecoration(
        color: theme.colorScheme.onError,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink10001.withOpacity(0.33),
      );
  static BoxDecoration get fillPink100 => BoxDecoration(
        color: appTheme.pink100,
      );
  static BoxDecoration get fillPink10001 => BoxDecoration(
        color: appTheme.pink10001,
      );
  static BoxDecoration get fillPink100011 => BoxDecoration(
        color: appTheme.pink10001.withOpacity(0.43),
      );
  static BoxDecoration get fillPink100012 => BoxDecoration(
        color: appTheme.pink10001.withOpacity(0.67),
      );
  static BoxDecoration get fillPink5001 => BoxDecoration(
        color: appTheme.pink5001,
      );
  static BoxDecoration get fillSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.gray200,
        border: Border(
          left: BorderSide(
            color: appTheme.black900,
            width: 1.h,
          ),
          bottom: BorderSide(
            color: appTheme.black900,
            width: 1.h,
          ),
          right: BorderSide(
            color: appTheme.black900,
            width: 1.h,
          ),
        ),
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
  // Circle borders
  static BorderRadius get circleBorder15 => BorderRadius.circular(
        15.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL25 => BorderRadius.vertical(
        top: Radius.circular(25.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get roundedBorder43 => BorderRadius.circular(
        43.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
