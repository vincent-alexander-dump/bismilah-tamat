import '../e_wallet_topup_screen/widgets/ewallettopup_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:vincent_s_application6/widgets/app_bar/custom_app_bar.dart';

class EWalletTopupScreen extends StatelessWidget {
  const EWalletTopupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return Padding(
                      padding: EdgeInsets.symmetric(vertical: 0.5.v),
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Divider(
                              height: 1.v,
                              thickness: 1.v,
                              color: appTheme.redA200)));
                },
                itemCount: 2,
                itemBuilder: (context, index) {
                  return EwallettopupItemWidget();
                })));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 66.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(13.h, 22.v, 315.h, 17.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: Container(
            height: 43.v,
            width: 104.h,
            margin: EdgeInsets.only(left: 15.h),
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      height: 43.v,
                      width: 104.h,
                      decoration: BoxDecoration(color: appTheme.blue600))),
              AppbarSubtitleOne(
                  text: "TopUp",
                  margin: EdgeInsets.fromLTRB(38.h, 10.v, 8.h, 8.v))
            ])),
        styleType: Style.bgFill);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
