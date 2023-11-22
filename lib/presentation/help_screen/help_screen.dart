import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:vincent_s_application6/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HelpScreen extends StatelessWidget {
  HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                child: Column(children: [
                  SizedBox(height: 20.v),
                   Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 16.0), // Add margin for the gap
              padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(
                  color: Colors.black, // Set the outline color
                  width: 2.0, // Set the outline width
                ),
              ),
              child: Text(
                'Search your problem here...',
                style: TextStyle(
                  color: const Color.fromARGB(255, 60, 59, 59),
                  fontSize: 18.0,
                ),
              ),
            ),
            SizedBox(height: 20.0),
                  _buildThirtyTwo(context),
                  Divider(indent: 19.h, endIndent: 14.h),
                  _buildThirtyThree(context,
                      mdiAccount: ImageConstant.imgStreamlineInteBlack900,
                      account: "Security and emergencies"),
                  Divider(indent: 21.h, endIndent: 12.h),
                  _buildThirtyThree(context,
                      mdiAccount: ImageConstant.imgMdiAccount,
                      account: "Account"),
                  Divider(indent: 21.h, endIndent: 11.h),
                  _buildThirtyThree(context,
                      mdiAccount: ImageConstant.imgMdiAbout,
                      account: "Problem with the application"),
                  Divider(indent: 21.h, endIndent: 12.h),
                  _buildThirtyThree(context,
                      mdiAccount: ImageConstant.imgPhGlobe,
                      account: "Language Choice"),
                  SizedBox(height: 5.v),
                  Divider(indent: 21.h, endIndent: 12.h)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 47.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 15.h, top: 25.v, bottom: 25.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title:
            AppbarSubtitleOne(text: "Help", margin: EdgeInsets.only(left: 8.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildThirtyTwo(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 12.v),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgComboChart,
                  height: 22.v,
                  width: 28.h,
                  margin: EdgeInsets.only(top: 1.v)),
              Padding(
                  padding: EdgeInsets.only(left: 8.h, top: 3.v),
                  child: Text("Frequently searched topics",
                      style: theme.textTheme.titleMedium)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 17.v,
                  width: 21.h,
                  margin: EdgeInsets.only(top: 6.v, right: 3.h))
            ]));
  }

  /// Common widget
  Widget _buildThirtyThree(
    BuildContext context, {
    required String mdiAccount,
    required String account,
  }) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 14.v),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                  imagePath: mdiAccount,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(top: 1.v)),
              Padding(
                  padding: EdgeInsets.only(left: 10.h, top: 3.v, bottom: 2.v),
                  child: Text(account,
                      style: theme.textTheme.titleMedium!
                          .copyWith(color: appTheme.black900))),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 17.v,
                  width: 21.h,
                  margin: EdgeInsets.only(top: 6.v, right: 1.h))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingScreen);
  }
}
