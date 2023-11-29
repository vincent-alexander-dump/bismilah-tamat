import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_title_image.dart';
import 'package:vincent_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:vincent_s_application6/widgets/custom_text_form_field.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key}) : super(key: key);

  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: appBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 36.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgTestAccount,
                                height: 50.adaptSize,
                                width: 50.adaptSize),
                            Card(
                                margin: EdgeInsets.only(
                                    left: 4.h, top: 10.v, bottom: 10.v),
                                color: appTheme.blueGray100,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder15),
                                child: Container(
                                    height: 30.v,
                                    width: 137.h,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.h, vertical: 6.v),
                                    decoration: AppDecoration.fillBlueGray
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder15),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Text("Tunggu saya tiba",
                                                  style: CustomTextStyles
                                                      .titleSmallSemiBold)),
                                        ])))
                          ])),
                      SizedBox(height: 22.v),
                      
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: message(context)));
  }

  PreferredSizeWidget appBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 50.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 15.h, top: 24.v, bottom: 26.v),
            onTap: () {
              backLeft(context);
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Row(children: [
              AppbarTitleImage(imagePath: ImageConstant.imgTestAccount),
              Container(
                  height: 42.v,
                  width: 115.h,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    AppbarSubtitleOne(
                        text: "Iqbal ",
                        margin: EdgeInsets.only(
                            left: 8.h, right: 63.h, bottom: 16.v)),
                    AppbarSubtitleTwo(
                      text: "+6281356783023",
                      margin: EdgeInsets.only(top: 26.v),
                      hintStyle: CustomTextStyles.titleSmallBluegray400,
                    )
                  ]))
            ])),
        styleType: Style.bgFill);
  }

  Widget message(BuildContext context) {
    return Container(
        height: 70,
        decoration: AppDecoration.fillBlue,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgAdd,
                  height: 45.v,
                  width: 30.h,
                  margin: EdgeInsets.symmetric(vertical: 5.v)),
              Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: CustomTextFormField(
                    width: 214.h,
                    controller: messageController,
                    hintText: "Type a message...",
                    hintStyle: CustomTextStyles.titleSmallSemiBold,
                    textInputAction: TextInputAction.done,
                    prefix: Container(
                        margin: EdgeInsets.fromLTRB(11.h, 5.v, 5.h, 5.v),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgReddit,
                            height: 30.v,
                            width: 28.h)),
                    prefixConstraints: BoxConstraints(maxHeight: 40.v),
                    contentPadding:
                        EdgeInsets.only(top: 11.v, right: 11.h, bottom: 11.v),
                    borderDecoration:
                        TextFormFieldStyleHelper.fillOnPrimaryContainerTL20,
                  )),
              CustomImageView(
                  imagePath: ImageConstant.imgCamera,
                  height: 30.v,
                  width: 28.h,
                  margin: EdgeInsets.only(left: 5.h, top: 5.v, bottom: 5.v)),
              Opacity(
                  opacity: 0.5,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgNavigation,
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                      margin:
                          EdgeInsets.only(left: 11.h, top: 5.v, bottom: 5.v)))
            ]));
  }

  backLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainScreenPage);
  }
}
