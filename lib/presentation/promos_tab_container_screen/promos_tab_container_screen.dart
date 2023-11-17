import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/presentation/promos_page/promos_page.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_title.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_title_button_three.dart';
import 'package:vincent_s_application6/widgets/app_bar/custom_app_bar.dart';

class PromosTabContainerScreen extends StatefulWidget {
  const PromosTabContainerScreen({Key? key}) : super(key: key);

  @override
  PromosTabContainerScreenState createState() =>
      PromosTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class PromosTabContainerScreenState extends State<PromosTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: appBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 20.v),
                  // _buildTabview(context),
                  SizedBox(
                      height: 668.v,
                      child: TabBarView(
                          controller: tabviewController,
                          children: [PromosPage()]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget appBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlue600,
            margin: EdgeInsets.only(left: 16.h, top: 26.v, bottom: 24.v),
            onTap: () {
              arrowBack(context);
            }),
        title: AppbarTitle(text: "Promo", margin: EdgeInsets.only(left: 13.h)),
        styleType: Style.bgFill);
  }

  /// Navigates back to the previous screen.
  arrowBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.eWalletMainScreen);
  }
}
