import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class InboxItemWidget extends StatelessWidget {
  const InboxItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillBluegray10001,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            color: appTheme.gray600,
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              right: 29.h,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgNavPromo,
                  height: 65.adaptSize,
                  width: 65.adaptSize,
                  margin: EdgeInsets.only(top: 9.v),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 17.h,
                      bottom: 10.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: SizedBox(
                          child: Text(
                          "PROMO Besar-besaran!",
                          style: CustomTextStyles.titleMediumBold,
                          ),
                        ),
                        ),
                        SizedBox(height: 5.v),
                        SizedBox(
                          width: 230.h,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      "Ayo naik FlowRide dari tanggal 17 Agustus hingga 20 Agustus dan dapatkan cashback hingga ",
                                  style: CustomTextStyles.bodySmallBlack90012_1,
                                  
                                ),
                                TextSpan(
                                  text: "50%!",
                                  style:
                                      CustomTextStyles.labelLargeBlack900Bold_1,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
        ],
      ),
    );
  }
}
