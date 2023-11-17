import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/custom_elevated_button.dart';
// ignore_for_file: must_be_immutable
class EWalletTransactionDetailsScreen extends StatelessWidget {
  EWalletTransactionDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.h, vertical: 20.v),
                      decoration: AppDecoration.fillBlue,
                      child: Text("Transaction details",
                          style: theme.textTheme.titleLarge)),
                  SizedBox(height: 28.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 139.h),
                          child: Text("Amount",
                              style: CustomTextStyles.bodyMedium15))),
                  SizedBox(height: 7.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(
                        padding: EdgeInsets.only(top: 33.v, bottom: 5.v),
                        child: Text("Rp ",
                            style: CustomTextStyles.titleMediumSemiBold)),
                    Text("250.000", style: theme.textTheme.displayLarge)
                  ]),
                  SizedBox(height: 35.v),
                  historyContainer(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: back(context)));
  }

  /// Section Widget
  Widget historyContainer(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 7.h, right: 10.h),
        padding: EdgeInsets.symmetric(vertical: 6.v),
        decoration: AppDecoration.fillPink100012,
        child: Column(children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 8.v, bottom: 18.v),
                        child: Text("From", style: theme.textTheme.bodyMedium)),
                    SizedBox(
                        height: 43.v,
                        width: 159.h,
                        child: Stack(alignment: Alignment.topLeft, children: [
                          Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                  padding: EdgeInsets.only(top: 10.v),
                                  child: Text("Iqbal Faridzi Balman",
                                      style: theme.textTheme.bodyMedium))),
                          CustomImageView(
                              imagePath: ImageConstant.imgTestAccount,
                              height: 38.v,
                              width: 42.h,
                              alignment: Alignment.topLeft),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Text("ABC: 535220148",
                                  style: CustomTextStyles.bodyMediumLight_1))
                        ]))
                  ])),
          SizedBox(height: 9.v),
          Divider(color: appTheme.pink10001.withOpacity(0.43)),
          SizedBox(height: 8.v),
          SizedBox(
              height: 236.v,
              width: 343.h,
              child: Stack(alignment: Alignment.bottomLeft, children: [
                Align(
                    alignment: Alignment.center,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 13.v),
                                    child: Text("To",
                                        style: theme.textTheme.bodyMedium)),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgTestAccount,
                                          height: 38.v,
                                          width: 42.h,
                                          margin: EdgeInsets.only(bottom: 5.v)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 2.h, top: 9.v),
                                          child: Column(children: [
                                            Text("Naswa Azahra",
                                                style:
                                                    theme.textTheme.bodyMedium),
                                            SizedBox(height: 2.v),
                                            Text("087878101920",
                                                style: CustomTextStyles
                                                    .bodyMediumLight_1)
                                          ]))
                                    ])
                              ])),
                      SizedBox(height: 16.v),
                      Divider(color: appTheme.pink10001.withOpacity(0.43)),
                      SizedBox(height: 13.v),
                      SizedBox(
                          height: 159.v,
                          width: 343.h,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.only(right: 17.h),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text("Rp.250.000",
                                              style:
                                                  theme.textTheme.bodyMedium),
                                          SizedBox(height: 58.v),
                                          Text("Bank transfer",
                                              style:
                                                  theme.textTheme.bodyMedium),
                                          SizedBox(height: 17.v),
                                          Text("20 June 2023, 00.56",
                                              style:
                                                  theme.textTheme.bodyMedium),
                                          SizedBox(height: 20.v),
                                          Text("FlowCar payment",
                                              style: theme.textTheme.bodyMedium)
                                        ]))),
                                        Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 17.h),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Payment Amount",
                                              style:
                                                  theme.textTheme.bodyMedium),
                                          SizedBox(height: 20.v),
                                          Text("Transaction No",
                                              style:
                                                  theme.textTheme.bodyMedium),
                                          SizedBox(height: 20.v),
                                          Text("Transaction Method",
                                              style:
                                                  theme.textTheme.bodyMedium),
                                          SizedBox(height: 20.v),
                                          Text("Transaction Date",
                                              style:
                                                  theme.textTheme.bodyMedium),
                                          SizedBox(height: 20.v),
                                        ]))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(bottom: 25.v),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(height: 10.v),
                                        ]))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(top: 37.v, right: 17.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgDocuments,
                                              height: 17.adaptSize,
                                              width: 17.adaptSize),
                                          Text("23UIL99HIJKL10MNFG",
                                              style: theme.textTheme.bodyMedium)
                                        ])))
                          ]))
                    ])),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 17.h),
                        child:
                            Text("Notes", style: theme.textTheme.bodyMedium)))
              ])),
          SizedBox(height: 35.v)
        ]));
  }

  /// Section Widget
  Widget back(BuildContext context) {
    return CustomElevatedButton(
        text: "BACK",
        margin: EdgeInsets.only(left: 21.h, right: 23.h, bottom: 19.v),
        onPressed: () {
          arrowBack(context);
        });
  }

  /// Navigates to the eWalletTransactionHistoryScreen when the action is triggered.
  arrowBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.eWalletTransactionHistoryScreen);
  }
}
