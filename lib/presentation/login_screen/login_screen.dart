import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/custom_elevated_button.dart';
import 'package:vincent_s_application6/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blue600,
            resizeToAvoidBottomInset: false,
            body: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 56.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 18.v),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.only(left: 17.h, right: 7.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgMicrosoftteams,
                                              height: 101.v,
                                              width: 108.h,
                                              alignment: Alignment.centerRight),
                                          SizedBox(height: 18.v),
                                          RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "Welcome to  ",
                                                    style: theme.textTheme
                                                        .headlineLarge),
                                                TextSpan(
                                                    text: "RideFlow!",
                                                    style: CustomTextStyles
                                                        .headlineLargeOrange300)
                                              ]),
                                              textAlign: TextAlign.left),
                                          SizedBox(height: 10.v),
                                          Text("Please login to continue",
                                              style: CustomTextStyles
                                                  .bodySmallOnPrimary12)
                                        ]),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgScooter,
                                        height: 75.adaptSize,
                                        width: 75.adaptSize,
                                        margin: EdgeInsets.only(
                                            left: 10.h,
                                            top: 134.v,
                                            bottom: 8.v))
                                  ]))),
                      SizedBox(height: 37.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text("E-mail",
                              style: CustomTextStyles.bodyLargeOnPrimary)),
                      SizedBox(height: 4.v),
                      CustomTextFormField(
                          controller: emailController,
                          hintText: "vincentalexander@gmail.com",
                          hintStyle: TextStyle(color: Colors.grey),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 17.h, vertical: 16.v),
                          borderDecoration:
                              TextFormFieldStyleHelper.fillLightBlue,
                          fillColor: appTheme.lightBlue900),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text("Password",
                              style: CustomTextStyles.bodyLargeOnPrimary)),
                      SizedBox(height: 5.v),
                      CustomTextFormField(
                          controller: passwordController,
                          hintText: "vincentalexander",
                          hintStyle: TextStyle(color: Colors.grey),
                          textInputAction: TextInputAction.done,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 17.h, vertical: 16.v),
                          borderDecoration:
                              TextFormFieldStyleHelper.fillLightBlue,
                          fillColor: appTheme.lightBlue900),
                      SizedBox(height: 10.v),
                      GestureDetector(
                          onTap: () {
                            toRegister(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 17.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Don’t have an account? ",
                                        style: CustomTextStyles
                                            .bodySmallOnPrimary12),
                                    TextSpan(
                                        text: "Register",
                                        style: CustomTextStyles.bodySmallOnPrimary12)
                                  ]),
                                  textAlign: TextAlign.left))),
                      SizedBox(height: 38.v),
                      CustomElevatedButton(
                          height: 51.v,
                          text: "LOGIN",
                          buttonStyle: CustomButtonStyles.fillBlueGray,
                          buttonTextStyle:
                              CustomTextStyles.titleLargeOnPrimary_1,
                          onPressed: () {
                            toMainScreen(context);
                          }),
                      SizedBox(height: 37.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("Or, login with",
                              style: CustomTextStyles.bodySmallOnPrimary12)),
                      SizedBox(height: 12.v),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 41.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEmail,
                                        height: 60.adaptSize,
                                        width: 60.adaptSize),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgFacebook,
                                        height: 60.adaptSize,
                                        width: 60.adaptSize,
                                        margin: EdgeInsets.only(left: 20.h)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgLinkedin,
                                        height: 60.adaptSize,
                                        width: 60.adaptSize,
                                        margin: EdgeInsets.only(left: 20.h))
                                  ])))
                    ]))));
  }

  toRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }

  toMainScreen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainScreenPage);
  }
}
