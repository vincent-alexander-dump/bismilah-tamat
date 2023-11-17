import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_image.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:vincent_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:vincent_s_application6/widgets/custom_elevated_button.dart';
import 'package:vincent_s_application6/widgets/custom_radio_button.dart';

// ignore_for_file: must_be_immutable
class OrderScreen extends StatelessWidget {
  OrderScreen({Key? key}) : super(key: key);

  String radioGroup = "";

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle,
                      height: 185.v,
                      width: 360.h),
                  _buildJalanTanjungDuren(context),
                  SizedBox(height: 1.v),
                  _buildLineFortySix(context),
                  SizedBox(height: 13.v),
                  _buildSelectViaMap(context),
                  SizedBox(height: 82.v),
                  _buildThumbsUp(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildORDER(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: Container(
            height: 41.v,
            width: 289.h,
            margin: EdgeInsets.only(left: 13.h),
            child: Stack(alignment: Alignment.bottomRight, children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      margin: EdgeInsets.only(right: 78.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 1.h, vertical: 7.v),
                      decoration: AppDecoration.fillBlue,
                      child: AppbarImage(
                          imagePath: ImageConstant.imgArrowLeft,
                          margin: EdgeInsets.only(right: 177.h),
                          onTap: () {
                            onTapArrowLeft(context);
                          }))),
              AppbarSubtitleOne(
                  text: "Where are you going today?",
                  margin: EdgeInsets.only(left: 40.h, top: 9.v, bottom: 7.v))
            ])),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildJalanTanjungDuren(BuildContext context) {
    return SizedBox(
        height: 97.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: CustomRadioButton(
                  text: "Jalan Tanjung Duren Utara 6A",
                  value: "Jalan Tanjung Duren Utara 6A",
                  groupValue: radioGroup,
                  padding: EdgeInsets.fromLTRB(24.h, 14.v, 30.h, 14.v),
                  onChange: (value) {
                    radioGroup = value;
                  })),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top: 48.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 27.h, vertical: 9.v),
                  decoration: AppDecoration.outlineBlack,
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgMdiLocation,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(top: 7.v)),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 21.h, top: 7.v, bottom: 6.v),
                        child: Text("Jalan Palmerah Barat No. 16",
                            style: CustomTextStyles.bodyMedium14))
                  ]))),
          CustomImageView(
              imagePath: ImageConstant.imgGroup191,
              height: 14.v,
              width: 4.h,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 38.h))
        ]));
  }

  /// Section Widget
  Widget _buildLineFortySix(BuildContext context) {
    return SizedBox(
        height: 150.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 66.v),
                  child: SizedBox(width: double.maxFinite, child: Divider()))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 27.v),
                  decoration: AppDecoration.fillBlueGray,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 12.h, right: 86.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgTimer,
                                      height: 30.adaptSize,
                                      width: 30.adaptSize,
                                      margin: EdgeInsets.only(bottom: 7.v)),
                                  Expanded(
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 15.h),
                                          child: Column(children: [
                                            Text("Jalan Tanjung Duren Utara 6A",
                                                style: CustomTextStyles
                                                    .bodyMedium14),
                                            SizedBox(height: 5.v),
                                            Text(
                                                "Jalan Tanjung Duren Utara 6A No. 392",
                                                style: CustomTextStyles
                                                    .bodySmallBlack900)
                                          ])))
                                ])),
                        SizedBox(height: 9.v),
                        Divider(indent: 3.h),
                        SizedBox(height: 10.v),
                        Padding(
                            padding: EdgeInsets.only(left: 12.h, right: 44.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgTimer,
                                  height: 30.adaptSize,
                                  width: 30.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 3.v)),
                              Expanded(
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 14.h),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Jalan Palmerah Barat No. 16",
                                                style: CustomTextStyles
                                                    .bodyMedium14),
                                            SizedBox(height: 6.v),
                                            Text(
                                                "Jalan Palmerah Barat No. 16, Palmerah, Jakarta",
                                                style: CustomTextStyles
                                                    .bodySmallBlack900)
                                          ])))
                            ]))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildSelectViaMap(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomElevatedButton(
                  height: 41.v,
                  text: "Select via map",
                  margin: EdgeInsets.only(right: 23.h),
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 12.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgLocation,
                          height: 20.adaptSize,
                          width: 20.adaptSize)),
                  buttonStyle: CustomButtonStyles.fillLightBlue,
                  buttonTextStyle: theme.textTheme.labelLarge!)),
          Expanded(
              child: CustomElevatedButton(
                  height: 41.v,
                  text: "Add goals",
                  margin: EdgeInsets.only(left: 23.h),
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 10.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgFlatcoloriconsplus,
                          height: 27.adaptSize,
                          width: 27.adaptSize)),
                  buttonStyle: CustomButtonStyles.fillLightBlue,
                  buttonTextStyle: theme.textTheme.labelLarge!))
        ]));
  }

  /// Section Widget
  Widget _buildThumbsUp(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 21.h, right: 46.h),
            child: Row(children: [
              Container(
                  height: 60.v,
                  width: 64.h,
                  padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 5.v),
                  decoration: AppDecoration.fillOnError.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgThumbsUp,
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                      alignment: Alignment.center)),
              Expanded(
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 12.h, top: 5.v, bottom: 2.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Well, just go wear PJek!",
                                style: CustomTextStyles.titleSmallMedium),
                            SizedBox(height: 3.v),
                            SizedBox(
                                width: 217.h,
                                child: Text(
                                    "Just sit and enjoy \nthe view until you reach your destination.",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        CustomTextStyles.bodySmallBlack90012))
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildORDER(BuildContext context) {
    return CustomElevatedButton(
        text: "ORDER",
        margin: EdgeInsets.only(left: 21.h, right: 23.h, bottom: 19.v),
        onPressed: () {
          onTapORDER(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the afterOrderScreen when the action is triggered.
  onTapORDER(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.afterOrderScreen);
  }
}
