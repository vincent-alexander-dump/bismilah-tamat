import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_title.dart';
import 'package:vincent_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:vincent_s_application6/widgets/custom_elevated_button.dart';
import 'package:vincent_s_application6/widgets/custom_icon_button.dart';
import 'package:vincent_s_application6/widgets/custom_text_form_field.dart';

class AfterOrderScreen extends StatelessWidget {
  AfterOrderScreen({Key? key}) : super(key: key);

  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            _buildBackgroundImage(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                appBar(context),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      height: 725.v,
                      width: double.maxFinite,
                      margin: EdgeInsets.only(bottom: 6.v),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          _buildAngie(context),
                          _buildVector(context),
                          _buildMdiLocation(context),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle730x360,
      height: 730.v,
      width: 360.h,
      alignment: Alignment.bottomCenter,
    );
  }

  Widget _buildAngie(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 500.v),
        padding: EdgeInsets.symmetric(vertical: 32.v),
        decoration: AppDecoration.fillBlue300.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL25,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 4.v, bottom: 10.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 34.h),
                      child: Text(
                        "B 360 L",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Padding(
                      padding: EdgeInsets.only(left: 33.h),
                      child: Text(
                        "Honda Vario 150",
                        style: CustomTextStyles.bodySmallBlack90011,
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Divider(endIndent: 2.h),
                    SizedBox(height: 10.v),
                    Padding(
                      padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                      child: Row(
                        children: [
                          CustomElevatedButton(
                            height: 30.v,
                            width: 62.h,
                            text: "Angie",
                            buttonStyle:
                                CustomButtonStyles.fillOnPrimaryContainer,
                            buttonTextStyle: theme.textTheme.titleSmall!,
                          ),
                          Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.only(left: 11.h),
                            color: theme.colorScheme.onPrimaryContainer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.circleBorder15,
                            ),
                            child: Container(
                              height: 30.v,
                              width: 44.h,
                              padding: EdgeInsets.symmetric(vertical: 6.v),
                              decoration:
                                  AppDecoration.fillOnPrimaryContainer.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder15,
                              ),
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: Text(
                                        "5.0",
                                        style: theme.textTheme.titleSmall,
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgChristmasStar,
                                    height: 15.v,
                                    width: 25.h,
                                    alignment: Alignment.topRight,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                   
                          Padding(
                            padding: EdgeInsets.only(left: 0.h),
                            child: CustomTextFormField(
                              width: 230.h,
                              controller: messageController,
                              hintText: "Send a message to the driver...",
                              hintStyle: CustomTextStyles.bodySmallBlack900,
                              textInputAction: TextInputAction.done,
                              suffix: Container(
                                margin:
                                    EdgeInsets.fromLTRB(0.h, 5.v, 2.h, 3.v),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgNavigation,
                                  height: 22.v,
                                  width: 30.h,
                                ),
                              ),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 25.v),
                              contentPadding: EdgeInsets.only(
                                left: 15.h,
                                top: 8.v,
                                bottom: 8.v,
                              ),
                              borderDecoration: TextFormFieldStyleHelper
                                  .fillOnPrimaryContainer,
                              style: null,
                            ),
                          ),
                                 Container(
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                            padding: EdgeInsets.symmetric(
                                horizontal: 3.h, vertical: 5.v),
                            decoration:
                                AppDecoration.fillOnPrimaryContainer.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder15,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgPhone,
                              height: 19.v,
                              width: 23.h,
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgTestAccount,
              height: 65.v,
              width: 51.h,
              margin: EdgeInsets.only(left: 28.h, bottom: 71.v),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVector(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(bottom: 627.v),
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v),
        decoration: AppDecoration.fillGray,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 15.adaptSize,
              width: 15.adaptSize,
              margin: EdgeInsets.only(left: 12.v, top: 5),
            
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    alignment: Alignment.centerLeft,
                  ),
                  CustomIconButton(
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    alignment: Alignment.center,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup8,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.h, top: 5.v, bottom: 2.v),
              child: Text(
                "Jalan Tanjung Duren Utara 6A",
                style: CustomTextStyles.bodyMedium14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMdiLocation(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 35.v),
        padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 9.v),
        decoration: AppDecoration.outlineBlack900,
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgMdiLocation,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 7.v),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.h, top: 7.v, bottom: 6.v),
              child: Text(
                "Jalan Palmerah Barat No. 16",
                style: CustomTextStyles.bodyMedium14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget appBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(

            imagePath: ImageConstant.imgArrowLeftBlue600,
            margin: EdgeInsets.only(left: 16.h, top: 26.v, bottom: 24.v),
            onTap: () {
              arrowBack(context);
            }),
        title: AppbarTitle(text: "Order", margin: EdgeInsets.only(left: 13.h)),
        styleType: Style.bgFill);
  }

  /// Navigates back to the previous screen.
  arrowBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.orderScreen);
  }
}
