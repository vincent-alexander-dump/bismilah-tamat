import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class SubscribeItemWidget extends StatelessWidget {
  const SubscribeItemWidget({Key? key})
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Text(
              "PJek 30 Days Deal",
              style: CustomTextStyles.bodyMediumOnPrimaryContainer14,
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 3.adaptSize,
                  width: 3.adaptSize,
                  margin: EdgeInsets.only(
                    top: 3.v,
                    bottom: 5.v,
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
                    "Cashback s/d 50% di setiap perjalanan",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 3.adaptSize,
                  width: 3.adaptSize,
                  margin: EdgeInsets.only(
                    top: 3.v,
                    bottom: 5.v,
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
                    "Gratis biaya admin ",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 3.adaptSize,
                  width: 3.adaptSize,
                  margin: EdgeInsets.only(
                    top: 3.v,
                    bottom: 5.v,
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
                    "Gratis biaya asuransi",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            color: appTheme.blue600,
          ),
          SizedBox(height: 8.v),
          Divider(
            color: appTheme.lightBlue900,
          ),
          SizedBox(height: 2.v),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rp. 50.000",
                        style: theme.textTheme.labelLarge,
                      ),
                      Text(
                        "Rp. 75.000",
                        style: theme.textTheme.bodySmall!.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  CustomOutlinedButton(
                    width: 56.h,
                    text: "BUY",
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
