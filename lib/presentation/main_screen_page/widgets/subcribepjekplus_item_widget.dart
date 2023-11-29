import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class iklan extends StatelessWidget {
  const iklan({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 27.v,
      ),
      decoration: AppDecoration.fillBlue.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder15,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMotorcycle,
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.only(bottom: 6.v),
          ),
          Expanded(
            child: Container(
              width: 216.h,
              margin: EdgeInsets.only(
                left: 9.h,
                bottom: 9.v,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Subcribe ",
                      style: CustomTextStyles.bodyMediumOnPrimaryContainerLight,
                    ),
                    TextSpan(
                      text: "RideFlow",
                      style: CustomTextStyles.bodyMediumOnPrimaryContainerLight
                          .copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: " Plus Sekarang untuk rasakan manfaatnya",
                      style: CustomTextStyles.bodyMediumOnPrimaryContainerLight,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
    );
  }
}