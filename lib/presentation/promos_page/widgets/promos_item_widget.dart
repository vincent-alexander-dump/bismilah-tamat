import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class PromosItemWidget extends StatelessWidget {
  const PromosItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 9.v),
      decoration: AppDecoration.fillBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Text(
              "QRIS UNLIMITED",
              style: CustomTextStyles.titleSmallOnPrimaryContainerMedium,
            ),
          ),
          SizedBox(height: 4.v),
          CustomImageView(
            imagePath: ImageConstant.imgMingcuteWallet4Fill,
            height: 15.adaptSize,
            width: 15.adaptSize,
            margin: EdgeInsets.only(left: 17.h),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 19.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 3.adaptSize,
                  width: 3.adaptSize,
                  margin: EdgeInsets.only(
                    top: 5.v,
                    bottom: 6.v,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text(
                    "Cashback s/d 500 PPay coins...",
                    style: CustomTextStyles.bodySmall12,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Divider(
            color: appTheme.blue600,
          ),
          SizedBox(height: 3.v),
          Divider(
            color: appTheme.lightBlue900,
          ),
          SizedBox(height: 4.v),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rp1",
                          style: theme.textTheme.labelLarge,
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          "Rp150.000",
                          style: theme.textTheme.bodySmall!.copyWith(
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomOutlinedButton(
                    width: 56.h,
                    text: "More",
                    margin: EdgeInsets.only(top: 3.v),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
