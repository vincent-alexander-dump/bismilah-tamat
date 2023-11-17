import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_title_button_one.dart';
import 'package:vincent_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:vincent_s_application6/widgets/custom_elevated_button.dart';
import 'package:vincent_s_application6/widgets/custom_phone_number.dart';
import 'package:vincent_s_application6/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('62');

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 10.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 30.h),
                              child: Text("Photo Profile",
                                  style: CustomTextStyles.bodyMedium14)),
                          SizedBox(height: 10.v),
                          _buildView(context),
                          SizedBox(height: 10.v),
                          Padding(
                              padding: EdgeInsets.only(left: 40.h),
                              child: Text("Add Photo",
                                  style: CustomTextStyles.bodyMedium14)),
                          SizedBox(height: 30.v),
                          _buildFortySix(context),
                          Align(
                              alignment: Alignment.center,
                              child: Divider(indent: 27.h, endIndent: 16.h)),
                          SizedBox(height: 26.v),
                          _buildFortyEight(context),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Divider(indent: 90.h, endIndent: 14.h)),
                          SizedBox(height: 22.v),
                          _buildFortySeven(context),
                          Align(
                              alignment: Alignment.center,
                              child: Divider(indent: 27.h, endIndent: 16.h)),
                          SizedBox(height: 41.v),
                          _buildSave(context),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitleButtonOne(
            margin: EdgeInsets.only(left: 13.h),
            onTap: () {
              onTapChangeProfile(context);
            }),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  height: 70.adaptSize,
                  width: 70.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray10002,
                      borderRadius: BorderRadius.circular(35.h))),
              Padding(
                  padding: EdgeInsets.only(left: 11.h, top: 28.v, bottom: 26.v),
                  child: Text("put up a good photo! everyone can see it.",
                      style: CustomTextStyles.bodySmallBlack900Light))
            ])));
  }

  /// Section Widget
  Widget _buildFortySix(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 3.v),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Text("Name *", style: CustomTextStyles.titleSmallMedium),
              SizedBox(height: 24.v),
              Text("Naswa Azahra", style: CustomTextStyles.bodyMedium14)
            ]));
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return CustomPhoneNumber(
        country: selectedCountry,
        controller: phoneNumberController,
        onTap: (Country country) {
          selectedCountry = country;
        });
  }

  /// Section Widget
  Widget _buildFortyEight(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 6.v),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text("Phone Number *",
                      style: CustomTextStyles.titleSmallMedium)),
              SizedBox(height: 10.v),
              _buildPhoneNumber(context)
            ]));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 88.h),
        child: CustomTextFormField(
            controller: emailController,
            hintText: "naswa.535220252@stu.untar.ac.id",
            hintStyle: CustomTextStyles.bodyMedium14,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.emailAddress));
  }

  /// Section Widget
  Widget _buildFortySeven(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 5.v),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              Text("Email *", style: CustomTextStyles.titleSmallMedium),
              SizedBox(height: 20.v),
              _buildEmail(context)
            ]));
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
        height: 38.v,
        width: 91.h,
        text: "Save",
        margin: EdgeInsets.only(left: 26.h),
        buttonStyle: CustomButtonStyles.fillPrimaryTL10,
        buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer,
        onPressed: () {
          onTapSave(context);
        });
  }

  /// Navigates to the settingScreen when the action is triggered.
  onTapChangeProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingScreen);
  }

  /// Navigates to the settingScreen when the action is triggered.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingScreen);
  }
}
