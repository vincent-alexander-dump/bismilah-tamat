import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class EwallettopupItemWidget extends StatelessWidget {
  const EwallettopupItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMagneticCard,
            height: 60.adaptSize,
            width: 60.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 57.h,
              top: 19.v,
              bottom: 21.v,
            ),
            child: Text(
              "Kartu Kredit",
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
