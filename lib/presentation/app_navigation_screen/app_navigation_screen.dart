import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Order",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.orderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "After Order",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.afterOrderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Setting",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Help",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.helpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "E-Wallet Points",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eWalletPointsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Main Screen - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mainScreenContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "E-Wallet Main Screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eWalletMainScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "E-Wallet Transaction History",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.eWalletTransactionHistoryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "E-Wallet Transaction Details",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.eWalletTransactionDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Chat",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.chatScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Register",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Promos - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.promosTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Inbox",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.inboxScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Subscribe - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.subscribeTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "E-Wallet Topup",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eWalletTopupScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "E-Wallet Contact Transfer",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eWalletContactTransferScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "E-Wallet Bank Transfer",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eWalletBankTransferScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "E-Wallet Success Payment",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eWalletSuccessPaymentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "E-Wallet Credit Card",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eWalletCreditCardScreen),
                        ),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
