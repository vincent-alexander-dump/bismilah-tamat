import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class FlowrideItemWidget extends StatelessWidget {
  FlowrideItemWidget({
    Key? key,
    this.buttonOrder
  }) : super(
          key: key,
        );

  VoidCallback? buttonOrder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75.h,
      child: GestureDetector(
        onTap: () {
          buttonOrder!.call();
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 3.v,
          ),
          decoration: AppDecoration.fillBlue.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder15,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMotorcycle,
                height: 40.adaptSize,
                width: 40.adaptSize,
              ),
              SizedBox(height: 6.v),
              Text(
                "FlowRide",
                style: CustomTextStyles.bodyMediumLight_1,
              ),
              SizedBox(height: 6.v),
            ],
          ),
        ),
      ),
    );
  }
}