import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:vincent_s_application6/widgets/app_bar/custom_app_bar.dart';

class HelpScreen extends StatelessWidget {
  HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: appBar(context),
            body: Container(
                child: Column(children: [
                  SizedBox(height: 20.v),
                   Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
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
                  container(context,
                      mdiAccount: ImageConstant.imgComboChart,
                      account: "Frequently Searched Topics"),
                  Divider(indent: 21.h, endIndent: 11.h),
                  container(context,
                      mdiAccount: ImageConstant.imgStreamlineInteBlack900,
                      account: "Security and emergencies"),
                  Divider(indent: 21.h, endIndent: 12.h),
                  container(context,
                      mdiAccount: ImageConstant.imgMdiAccount,
                      account: "Account"),
                  Divider(indent: 21.h, endIndent: 11.h),
                  container(context,
                      mdiAccount: ImageConstant.imgMdiAbout,
                      account: "Problem with the application"),
                  Divider(indent: 21.h, endIndent: 12.h),
                  container(context,
                      mdiAccount: ImageConstant.imgPhGlobe,
                      account: "Language Choice"),
                  SizedBox(height: 5.v),
                  Divider(indent: 21.h, endIndent: 12.h)
                ]))));
  }

  PreferredSizeWidget appBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 47.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 15.h, top: 25.v, bottom: 25.v),
            onTap: () {
              back(context);
            }),
        title:
            AppbarSubtitleOne(text: "Help", margin: EdgeInsets.only(left: 8.h)),
        styleType: Style.bgFill);
  }

  Widget container(
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

  back(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingScreen);
  }
}
