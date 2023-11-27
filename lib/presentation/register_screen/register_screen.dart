import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/custom_elevated_button.dart';
import 'package:vincent_s_application6/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

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
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 29.h, top: 68.v, right: 29.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgMicrosoftteams,
                          height: 101.v,
                          width: 108.h,
                          alignment: Alignment.center),
                      SizedBox(height: 33.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("Register",
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 6.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("Create your account",
                              style: CustomTextStyles.bodyMediumLightblue900)),
                      SizedBox(height: 28.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text("Fullname",
                              style: CustomTextStyles.bodyLargeOnPrimary)),
                      SizedBox(height: 4.v),
                      fullName(context),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text("E-mail",
                              style: CustomTextStyles.bodyLargeOnPrimary)),
                      SizedBox(height: 5.v),
                      email(context),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text("Password",
                              style: CustomTextStyles.bodyLargeOnPrimary)),
                      SizedBox(height: 5.v),
                      password(context),
                      SizedBox(height: 11.v),
                      GestureDetector(
                          onTap: () {
                            toLogin(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 17.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Already have an account? ",
                                        style: CustomTextStyles
                                            .bodySmallOnPrimary12),
                                    TextSpan(
                                        text: "Login",
                                        style: CustomTextStyles.bodySmall12_1)
                                  ]),
                                  textAlign: TextAlign.left))),
                      SizedBox(height: 40.v),
                      buttonRegister(context),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget fullName(BuildContext context) {
    return CustomTextFormField(
        controller: fullNameController,
        hintText: "vincentalexander",
        hintStyle: TextStyle(color: Colors.grey),
        contentPadding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 16.v),
        borderDecoration: TextFormFieldStyleHelper.fillLightBlue,
        fillColor: appTheme.lightBlue900);
  }

  /// Section Widget
  Widget email(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "vincentalexander@gmail.com",
        hintStyle: TextStyle(color: Colors.grey),
        contentPadding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 16.v),
        borderDecoration: TextFormFieldStyleHelper.fillLightBlue,
        fillColor: appTheme.lightBlue900);
  }

  /// Section Widget
  Widget password(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        hintText: "vincentalexander",
        hintStyle: TextStyle(color: Colors.grey),
        textInputAction: TextInputAction.done,
        contentPadding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 16.v),
        borderDecoration: TextFormFieldStyleHelper.fillLightBlue,
        fillColor: appTheme.lightBlue900);
  }

  /// Section Widget
  Widget buttonRegister(BuildContext context) {
    return CustomElevatedButton(
        height: 51.v,
        text: "REGISTER",
        buttonStyle: CustomButtonStyles.fillBlueGray,
        buttonTextStyle: CustomTextStyles.titleLargeOnPrimary_1,
        onPressed: () {
          toMainScreen(context);
        });
  }

  /// Navigates to the loginScreen when the action is triggered.
  toLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the mainScreenContainerScreen when the action is triggered.
  toMainScreen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainScreenPage);
  }
}
