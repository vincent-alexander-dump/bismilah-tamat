import '../subscribe_page/widgets/subscribe_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class SubscribePage extends StatefulWidget {
  const SubscribePage({Key? key})
      : super(
          key: key,
        );

  @override
  SubscribePageState createState() => SubscribePageState();
}

class SubscribePageState extends State<SubscribePage>
    with AutomaticKeepAliveClientMixin<SubscribePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 17.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 11.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40.v,
                      width: 152.h,
                      margin: EdgeInsets.only(left: 1.h),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              padding: EdgeInsets.all(1.h),
                              decoration: AppDecoration.fillOnPrimaryContainer,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 1.v),
                                  Text(
                                    "PJek Plus",
                                    style: theme.textTheme.headlineSmall,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgMotorcycle,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 1.h),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Text(
                        "Lebih hemat dengan PJek Plus",
                        style: CustomTextStyles.bodyLargeLight_1,
                      ),
                    ),
                    SizedBox(height: 13.v),
                    _buildSubscribe(context),
                    SizedBox(height: 17.v),
                    Container(
                      height: 40.v,
                      width: 158.h,
                      margin: EdgeInsets.only(left: 1.h),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 7.h,
                                vertical: 3.v,
                              ),
                              decoration: AppDecoration.fillOnPrimaryContainer,
                              child: Text(
                                "PCar Plus",
                                style: theme.textTheme.headlineSmall,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgFiat500,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            alignment: Alignment.centerLeft,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Text(
                        "Lebih hemat dengan PCar Plus",
                        style: CustomTextStyles.bodyLargeLight_1,
                      ),
                    ),
                    SizedBox(height: 15.v),
                    _buildFiftySeven(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSubscribe(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 19.v,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return SubscribeItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftySeven(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.only(left: 1.h),
      color: appTheme.blue600,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Container(
        height: 126.v,
        width: 335.h,
        decoration: AppDecoration.fillBlue.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  top: 10.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PCar 30 Days Deal",
                      style: CustomTextStyles.bodyMediumOnPrimaryContainer14,
                    ),
                    SizedBox(height: 5.v),
                    Padding(
                      padding: EdgeInsets.only(left: 5.h),
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
                      padding: EdgeInsets.only(left: 5.h),
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
                      padding: EdgeInsets.only(left: 5.h),
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
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 48.v),
                child: SizedBox(
                  width: 335.h,
                  child: Divider(
                    color: appTheme.blue600,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(14.h, 89.v, 14.h, 9.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildWidget(
                      context,
                      rpCounter: "Rp. 80.000",
                      rpCounter1: "Rp. 150.000",
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 3.v,
                      ),
                      decoration: AppDecoration.outlineBlue.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder15,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 1.v),
                          Text(
                            "BUY",
                            style: CustomTextStyles.titleSmallBlue600,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 39.v),
                child: SizedBox(
                  width: 334.h,
                  child: Divider(
                    color: appTheme.lightBlue900,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 9.v),
                decoration: BoxDecoration(
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
                        "PCar 30 Days Deal",
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
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Rp. 80.000",
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                                Text(
                                  "Rp. 150.000",
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
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildWidget(
    BuildContext context, {
    required String rpCounter,
    required String rpCounter1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            rpCounter,
            style: theme.textTheme.labelLarge!.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
        Text(
          rpCounter1,
          style: theme.textTheme.bodySmall!.copyWith(
            decoration: TextDecoration.lineThrough,
            color: theme.colorScheme.onPrimaryContainer,
          ),
        ),
      ],
    );
  }
}
