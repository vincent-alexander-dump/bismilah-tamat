import 'package:vincent_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_title.dart';

import '../e_wallet_transaction_history_screen/widgets/thismonth_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/app_bar/custom_app_bar.dart';

// ignore: must_be_immutable
class EWalletTransactionHistoryScreen extends StatelessWidget {
  EWalletTransactionHistoryScreen({Key? key})
      : super(
          key: key,
        );

  List thismonthItemList = [
    {'id': 1, 'groupBy': "This Month"},
    {'id': 2, 'groupBy': "This Month"},
    {'id': 3, 'groupBy': "This Month"},
    {'id': 4, 'groupBy': "This Month"},
    {'id': 5, 'groupBy': "Last Month"},
    {'id': 6, 'groupBy': "Last Month"}
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: appBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              balanceBox(context),
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.h,
                      vertical: 27.v,
                    ),
                    decoration: AppDecoration.fillPink5001,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 30.v,
                          width: 300.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                
                                child: Text(
                                  "Transaction History",
                                  style: CustomTextStyles.headlineSmallBold,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
                                  width: 261.h,
                                  child: Divider(
                                    color: appTheme.redA200,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.v),
                        historyData(context),
                        SizedBox(height: 5.v),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget balanceBox(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillPink100,
      child: Column(
        children: [
          
          SizedBox(height: 25.v),
          Text(
            "Balance",
            style: TextStyle(
              fontSize: 20.fSize,
            ),
          ),
          SizedBox(height: 10.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 33.v,
                  bottom: 5.v,
                ),
                child: Text(
                  "Rp",
                  style: CustomTextStyles.titleMediumSemiBold,
                ),
              ),
              Text(
                "100.000",
                style: CustomTextStyles.displayLargeBlack900,
              ),
            ],
          ),
          SizedBox(height: 14.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget historyData(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 15.h),
        child: GroupedListView<dynamic, String>(
          shrinkWrap: true,
          stickyHeaderBackgroundColor: Colors.transparent,
          elements: thismonthItemList,
          groupBy: (element) => element['groupBy'],
          sort: false,
          groupSeparatorBuilder: (String value) {
            return Padding(
              padding: EdgeInsets.only(
                top: 30.v,
                bottom: 16.v,
              ),
              child: Text(
                value,
                style: CustomTextStyles.labelLargeBlack900Bold.copyWith(
                  color: appTheme.black900,
                ),
                
              ),
              
            );
          },
          itemBuilder: (context, model) {
            return ThismonthItemWidget();
          },
          separator: SizedBox(
            height: 23.v,
          ),
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
        title: AppbarTitle(text: "Transaction History", margin: EdgeInsets.only(left: 13.h)),
        styleType: Style.bgFill);
  }

  /// Navigates back to the previous screen.
  arrowBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.eWalletMainScreen);
  }
}

