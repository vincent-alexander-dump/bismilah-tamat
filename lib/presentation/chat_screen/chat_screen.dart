import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_title_image.dart';
import 'package:vincent_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:vincent_s_application6/widgets/custom_elevated_button.dart';
import 'package:vincent_s_application6/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key}) : super(key: key);

  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
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
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
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
                                    decoration: AppDecoration.fillBluegray100
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
                                                      .bodyMediumExtraLight14)),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Text("Tunggu saya tiba",
                                                  style: CustomTextStyles
                                                      .bodyMediumExtraLight14))
                                        ])))
                          ])),
                      SizedBox(height: 22.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomElevatedButton(
                                    height: 30.v,
                                    width: 147.h,
                                    text: "Saya di depan Untar",
                                    margin:
                                        EdgeInsets.symmetric(vertical: 10.v),
                                    buttonStyle:
                                        CustomButtonStyles.fillBlueGrayTL15,
                                    buttonTextStyle: CustomTextStyles
                                        .bodyMediumExtraLight14),
                                CustomImageView(
                                    imagePath: ImageConstant.imgTestAccount,
                                    height: 50.adaptSize,
                                    width: 50.adaptSize,
                                    margin: EdgeInsets.only(left: 9.h))
                              ])),
                      SizedBox(height: 20.v),
                      Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgTestAccount,
                                height: 50.adaptSize,
                                width: 50.adaptSize),
                            CustomElevatedButton(
                                height: 30.v,
                                width: 105.h,
                                text: "Baik kakk..",
                                margin: EdgeInsets.only(
                                    left: 4.h, top: 10.v, bottom: 10.v),
                                buttonStyle:
                                    CustomButtonStyles.fillBlueGrayTL15,
                                buttonTextStyle:
                                    CustomTextStyles.bodyMediumExtraLight14)
                          ])),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildMessage(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 43.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 11.h, top: 24.v, bottom: 26.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Row(children: [
              AppbarTitleImage(imagePath: ImageConstant.imgTestAccount),
              Container(
                  height: 40.129997.v,
                  width: 115.h,
                  margin: EdgeInsets.only(top: 17.v, bottom: 7.v),
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    AppbarSubtitleOne(
                        text: "Iqbal ",
                        margin: EdgeInsets.only(
                            left: 8.h, right: 63.h, bottom: 16.v)),
                    AppbarSubtitleTwo(
                        text: "+6281356783023",
                        margin: EdgeInsets.only(top: 22.v))
                  ]))
            ])),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildMessage(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 21.h, right: 10.h, bottom: 18.v),
        decoration: AppDecoration.fillBlue,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgAdd,
                  height: 30.v,
                  width: 28.h,
                  margin: EdgeInsets.symmetric(vertical: 5.v)),
              Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: CustomTextFormField(
                      width: 214.h,
                      controller: messageController,
                      hintText: "Type a message...",
                      hintStyle: CustomTextStyles.bodyMediumExtraLight14,
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
                          TextFormFieldStyleHelper.fillOnPrimaryContainerTL20)),
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

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
