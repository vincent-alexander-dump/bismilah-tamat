import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/custom_elevated_button.dart';

class EWalletPointsScreen extends StatelessWidget {
  const EWalletPointsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.h, vertical: 20.v),
                      decoration: AppDecoration.fillBlue,
                      child: Text("Flow Points",
                          style: theme.textTheme.titleLarge)),
                  SizedBox(height: 30.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 140.h),
                          child: Text("Flow Points",
                              style: CustomTextStyles.bodyMedium15))),
                  SizedBox(height: 10.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(
                        padding: EdgeInsets.only(top: 33.v, bottom: 5.v),
                        child: Text("Rp ",
                            style: CustomTextStyles.titleMediumSemiBold)),
                    Text("25.000", style: theme.textTheme.displayLarge)
                  ]),
                  SizedBox(height: 31.v),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 19.v),
                    decoration: AppDecoration.fillPink,
                    child: Row(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgAlarmClock,
                          height: 39.v,
                          width: 43.h,
                          margin: EdgeInsets.only(bottom: 1.v)),
                      Expanded(
                          child: Container(
                              width: 286.h,
                              margin: EdgeInsets.only(left: 7.h),
                              child: Text(
                                  "25.000 points akan segera hangus pada \n31 Desember 2023",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleMedium)))
                    ])),
                  Expanded(
                    child: Container(
                        color: Color(0xffff536D),
                        width: double.maxFinite,
                        height: 30,
                        padding: const EdgeInsets.fromLTRB(0, 22, 0, 0),
                        child: Text(
                            "Mengenai Flow Points",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleMedium))),
                  SizedBox(height: 25.v),
                  Padding(
                    padding: EdgeInsets.only(left: 26.h, right: 22.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgFiat500,
                              height: 60.adaptSize,
                              width: 60.adaptSize,
                              margin: EdgeInsets.only(bottom: 7.v)),
                          Expanded(
                              child: Container(
                                  width: 236.h,
                                  margin: EdgeInsets.only(left: 15.h, top: 6.v),
                                  child: Text(
                                      "Flow Point dapat digunakan untuk membayar atau mendiskon FlowRide dan FlowCar.",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles.titleMediumRedA200)))
                        ])),
                  SizedBox(height: 9.v),
                  Divider(color: appTheme.pink10001.withOpacity(0.43)),
                  SizedBox(height: 20.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 26.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgBilling,
                                height: 60.adaptSize,
                                width: 60.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 15.h, top: 23.v, bottom: 17.v),
                                child: Text("1 Flow Point setara Rp.1",
                                    style: CustomTextStyles.titleMediumRedA200))
                          ]))),
                  SizedBox(height: 15.v),
                  Divider(color: appTheme.pink10001.withOpacity(0.43)),
                  SizedBox(height: 15.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 26.h, right: 48.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgCash,
                                    height: 60.adaptSize,
                                    width: 60.adaptSize),
                                Expanded(
                                    child: Container(
                                        width: 211.h,
                                        margin: EdgeInsets.only(
                                            left: 15.h, top: 4.v, bottom: 17.v),
                                        child: Text(
                                            "Flow Point tidak dapat diuangkan atau ditarik tunai.",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .titleMediumRedA200)))
                              ]))),
                  SizedBox(height: 12.v),
                  Divider(color: appTheme.pink10001.withOpacity(0.43)),
                  SizedBox(height: 25.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 26.h, right: 48.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgPlanner,
                                height: 60.adaptSize,
                                width: 60.adaptSize),
                                Expanded(
                                    child: Container(
                                        width: 211.h,
                                        margin: EdgeInsets.only(
                                            left: 15.h, top: 4.v, bottom: 17.v),
                                        child: Text(
                                            "Flow Point akan hangus setiap 31 Desember setiap tahunnya.",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .titleMediumRedA200)))
                          ]))),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildBACK(context)));
  }

  /// Section Widget
  Widget _buildBACK(BuildContext context) {
    return CustomElevatedButton(
        text: "BACK",
        margin: EdgeInsets.only(left: 21.h, right: 23.h, bottom: 20.v),
        onPressed: () {
          onTapBACK(context);
        });
  }

  /// Navigates to the eWalletMainScreen when the action is triggered.
  onTapBACK(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.eWalletMainScreen);
  }
}
