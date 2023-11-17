import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_title_button.dart';
import 'package:vincent_s_application6/widgets/app_bar/custom_app_bar.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 8.v),
                child: Column(children: [
                  _buildTestAccount(context),
                  SizedBox(height: 18.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 18.h),
                          child: Text("Account",
                              style: theme.textTheme.titleMedium))),
                  SizedBox(height: 5.v),
                  _buildMySpace(context),
                  Divider(indent: 18.h, endIndent: 13.h),
                  _buildTwentyFive(context),
                  Divider(indent: 21.h, endIndent: 12.h),
                  Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: _buildTwentySix(context,
                          heroiconsQuest: ImageConstant.imgHeroiconsQuest,
                          helpReport: "Help & Report")),
                  Divider(indent: 18.h, endIndent: 13.h),
                  SizedBox(height: 45.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 18.h),
                          child: Text("Other Info",
                              style: CustomTextStyles.titleSmallMedium))),
                  SizedBox(height: 20.v),
                  _buildTwentyNine(context),
                  Divider(indent: 18.h, endIndent: 13.h),
                  Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: _buildTwentySix(context,
                          heroiconsQuest: ImageConstant.imgStreamlineInte,
                          helpReport: "Rating")),
                  Divider(indent: 18.h, endIndent: 16.h),
                  Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: _buildTwentySix(context,
                          heroiconsQuest:
                              ImageConstant.imgMaterialSymbolsLogout,
                          helpReport: "Logout Account")),
                  SizedBox(height: 5.v),
                  Divider(indent: 18.h, endIndent: 16.h)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitleButton(
            margin: EdgeInsets.only(left: 13.h),
            onTap: () {
              onTapMyProfile(context);
            }),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildTestAccount(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 13.h, right: 38.h),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgTestAccount,
                  height: 65.v,
                  width: 51.h,
                  margin: EdgeInsets.only(bottom: 11.v)),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 7.h, top: 9.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Naswa Azahra",
                                      style: theme.textTheme.titleLarge),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgMdiPencil,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize)
                                ]),
                            SizedBox(height: 6.v),
                            Text("naswa.535220252@stu.untar.ac.id",
                                style: CustomTextStyles.bodyMediumLight),
                            SizedBox(height: 2.v),
                            Text("087878101920",
                                style: CustomTextStyles.bodyMediumLight)
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildMySpace(BuildContext context) {
    return SizedBox(
        height: 39.v,
        width: 359.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle47,
              height: 38.v,
              width: 359.h,
              alignment: Alignment.center),
          _buildTwentySix(context,
              heroiconsQuest: ImageConstant.imgMyspace, helpReport: "Subscribe")
        ]));
  }

  /// Section Widget
  Widget _buildTwentyFive(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 6.v),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgFlag,
                  height: 18.v,
                  width: 20.h,
                  margin: EdgeInsets.only(top: 8.v, bottom: 3.v)),
              Padding(
                  padding: EdgeInsets.only(left: 11.h, top: 8.v),
                  child: Text("Payment Method",
                      style: theme.textTheme.titleMedium)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 17.v,
                  width: 21.h,
                  margin: EdgeInsets.only(top: 12.v))
            ]));
  }

  /// Section Widget
  Widget _buildTwentyNine(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 10.v),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgIconParkOutlineInboxIn,
                  height: 19.v,
                  width: 24.h),
              Padding(
                  padding: EdgeInsets.only(left: 8.h, top: 2.v),
                  child: Text("Inbox", style: theme.textTheme.titleMedium)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 13.v,
                  width: 21.h,
                  margin: EdgeInsets.only(top: 8.v))
            ]));
  }

  /// Common widget
  Widget _buildTwentySix(
    BuildContext context, {
    required String heroiconsQuest,
    required String helpReport,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 9.v),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                  imagePath: heroiconsQuest, height: 21.v, width: 24.h),
              Padding(
                  padding: EdgeInsets.only(left: 10.h, top: 3.v),
                  child: Text(helpReport,
                      style: theme.textTheme.titleMedium!
                          .copyWith(color: appTheme.black900))),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 17.v,
                  width: 21.h,
                  margin: EdgeInsets.only(top: 4.v, right: 2.h))
            ]));
  }

  /// Navigates to the mainScreenContainerScreen when the action is triggered.
  onTapMyProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainScreenContainerScreen);
  }
}
