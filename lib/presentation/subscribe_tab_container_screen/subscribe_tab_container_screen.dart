import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/presentation/subscribe_page/subscribe_page.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_image.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_subtitle.dart';
import 'package:vincent_s_application6/widgets/app_bar/custom_app_bar.dart';

class SubscribeTabContainerScreen extends StatefulWidget {
  const SubscribeTabContainerScreen({Key? key}) : super(key: key);

  @override
  SubscribeTabContainerScreenState createState() =>
      SubscribeTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class SubscribeTabContainerScreenState
    extends State<SubscribeTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 21.v),
                  _buildTabview(context),
                  SizedBox(
                      height: 669.v,
                      child: TabBarView(
                          controller: tabviewController,
                          children: [
                            SubscribePage(),
                            SubscribePage(),
                            SubscribePage(),
                            SubscribePage()
                          ]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 76.v,
        title: Container(
            margin: EdgeInsets.only(left: 13.h),
            padding: EdgeInsets.symmetric(vertical: 6.v),
            decoration: AppDecoration.fillBlue,
            child: Row(children: [
              AppbarImage(
                  imagePath: ImageConstant.imgArrowLeft,
                  margin: EdgeInsets.only(top: 2.v),
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              AppbarSubtitle(
                  text: "Subscribe",
                  margin: EdgeInsets.fromLTRB(8.h, 1.v, 80.h, 3.v))
            ])),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 34.v,
        width: double.maxFinite,
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.black900,
            labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700),
            unselectedLabelColor: appTheme.black900,
            unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700),
            indicatorColor: theme.colorScheme.primary,
            tabs: [
              Tab(child: Text("Voucher")),
              Tab(child: Text("Voucher")),
              Tab(child: Text("Subscribe")),
              Tab(child: Text("Mission"))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
