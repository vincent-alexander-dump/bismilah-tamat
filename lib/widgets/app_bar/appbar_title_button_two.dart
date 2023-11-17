import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class AppbarTitleButtonTwo extends StatelessWidget {
  AppbarTitleButtonTwo({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomElevatedButton(
          height: 27.v,
          width: 133.h,
          text: "History",
          leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 27.v,
              width: 32.h,
            ),
          ),
          buttonStyle: CustomButtonStyles.fillBlue,
          buttonTextStyle: theme.textTheme.titleLarge!,
        ),
      ),
    );
  }
}
