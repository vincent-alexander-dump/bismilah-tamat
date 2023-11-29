import 'package:vincent_s_application6/presentation/main_screen_page/widgets/subcribepjekplus_item_widget.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_subtitle_one.dart';

import '../main_screen_page/widgets/flowride_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/app_bar/custom_app_bar.dart';

class MainScreenPage extends StatelessWidget {
  MainScreenPage({Key? key}) : super(key: key);

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: appBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 22.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      saldo(context),
                      SizedBox(height: 21.v),
                      buttonFlowRide(context),
                      SizedBox(height: 16.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 12.h),
                              child: Text("Recommended For You",
                                  style: CustomTextStyles.titleLargeLight))),
                      SizedBox(height: 15.v),
                      buildIklan(context),
                      SizedBox(height: 20.v),
                      navigationButton(context), 
                    ]))));
  }
  
   onTapArrowLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingScreen);
  }

  PreferredSizeWidget appBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 47.h,
        leading: CustomImageView(
              imagePath: ImageConstant.imgTestAccount,
              margin: EdgeInsets.only(left: 5.h),
              onTap: () {
              onTapArrowLeft(context);
            }
            ),
        title:
            AppbarSubtitleOne(text: "Your Account", margin: EdgeInsets.only(left: 8.h)),
        styleType: Style.bgFill);
  }

  Widget saldo(BuildContext context) {
    return GestureDetector(
        onTap: () {
          toEWallet(context);
        },
        child: Container(
            margin: EdgeInsets.only(left: 3.h, right: 2.h),
            padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 16.v),
            decoration: AppDecoration.fillPink10001
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder15),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 3.h, top: 6.v, bottom: 6.v),
                      padding:
                          EdgeInsets.symmetric(horizontal: 11.h, vertical: 7.v),
                      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder15),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 3.v),
                            Text("Rp100.000",
                                style: CustomTextStyles.titleLargeOnPrimary),
                            Text("points 25.000",
                                style: CustomTextStyles.bodyLargeOnPrimary)
                          ])),
                  Container(
                      height: 67.v,
                      width: 40.h,
                      margin: EdgeInsets.only(bottom: 6.v),
                      child: Stack(alignment: Alignment.topLeft, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                margin: EdgeInsets.only(left: 1.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 3.h, vertical: 6.v),
                                decoration: AppDecoration.fillPink10001,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 41.v),
                                      Text("Top Up",
                                          style: CustomTextStyles.labelMedium10)
                                    ]))),
                        CustomImageView(
                            imagePath: ImageConstant.imgAddShoppingCart,
                            height: 35.adaptSize,
                            width: 35.adaptSize,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(top: 5.v))
                      ])),
                  Container(
                      height: 68.v,
                      width: 38.h,
                      margin: EdgeInsets.only(bottom: 6.v),
                      child: Stack(alignment: Alignment.topLeft, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                margin: EdgeInsets.only(left: 1.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.h, vertical: 6.v),
                                decoration: AppDecoration.fillPink10001,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 43.v),
                                      Text("Pay",
                                          style: CustomTextStyles.labelMedium10)
                                    ]))),
                        CustomImageView(
                            imagePath: ImageConstant.imgBuying,
                            height: 35.adaptSize,
                            width: 35.adaptSize,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(top: 6.v))
                      ])),
                  Container(
                      margin: EdgeInsets.only(bottom: 6.v),
                      padding: EdgeInsets.symmetric(vertical: 6.v),
                      decoration: AppDecoration.fillPink10001,
                      child: Column(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRocket,
                            height: 35.adaptSize,
                            width: 35.adaptSize),
                        SizedBox(height: 8.v),
                        Text("Explore", style: CustomTextStyles.labelMedium10)
                      ]))
                ])));
  }

  Widget buttonFlowRide(BuildContext context) {
    return SizedBox(
        height: 75.v,
        child: ListView.separated(
            padding: EdgeInsets.only(left: 71.h, right: 75.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 42.h);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return FlowrideItemWidget(buttonOrder: () {
                toOrder(context);
              });
            }));
  }

  Widget buildIklan(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 3.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 10.v);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return iklan();
            }));
  }

  toOrder(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.orderScreen);
  }
  toEWallet(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.eWalletMainScreen);
  }
  Widget navigationButton(BuildContext context) {
  return  Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.mainScreenPage);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFF00A86B)),
                      side: MaterialStateProperty.all(
                        BorderSide(width: 0.0, color: Colors.black),
                      ),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      padding: MaterialStateProperty.all(EdgeInsets.all(10.0)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 22)),
                      shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      ),
                      ),
                      minimumSize: MaterialStateProperty.all(
                      Size(double.infinity, 70.0),
                    ),
                    ),
                    child: Text("Home"),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.promosScreen);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFFCD5C5C)),
                      side: MaterialStateProperty.all(
                        BorderSide(width: 0.0, color: Colors.black),
                      ),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 10.0)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 22)),
                      shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      ),
            ),
                      minimumSize: MaterialStateProperty.all(
                        Size(double.infinity, 70.0),
                      ),
                    ),
                    child: Text("Promo"),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.inboxScreen);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFFFFD801)),
                      side: MaterialStateProperty.all(
                        BorderSide(width: 0.0, color: Colors.black),
                      ),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      padding: MaterialStateProperty.all(EdgeInsets.all(19.0)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 22)),
                      shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      ),
                      
            ),
                      minimumSize: MaterialStateProperty.all(
                      Size(double.infinity, 70.0), 
                      ),
                    ),
                    child: Text("Inbox"),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.chatScreen);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFF008ECC)),
                      side: MaterialStateProperty.all(
                        BorderSide(width: 0.0, color: Colors.black),
                      ),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      padding: MaterialStateProperty.all(EdgeInsets.all(19.0)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 22)),
                      shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                        ),
                      ),
                      minimumSize: MaterialStateProperty.all(
                      Size(double.infinity, 70.0),
                      ),
                    ),
                    child: Text("Chat"),
                  ),
                ),
              ],
            );
}
}
