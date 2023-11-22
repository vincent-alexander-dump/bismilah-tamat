import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_title.dart';
import 'package:vincent_s_application6/widgets/app_bar/custom_app_bar.dart';

class EWalletTopupScreen extends StatelessWidget {
  const EWalletTopupScreen({Key? key}) : super(key: key);

  @override
Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return SafeArea(
    child: Scaffold(
      appBar: appBar(context),
      body: Column(
        children: [
          Container(
            width: double.infinity, // Set the desired width
            height: 100.0, // Set the desired height
            child: ElevatedButton(
              onPressed: () {
              Navigator.pushNamed(context, AppRoutes.eWalletCreditCardScreen);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all((Color(0xFFFBF0B2))),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              )),
              ),
              child: Text(
                'Kartu Kredit',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity, // Set the desired width
            height: 100.0, // Set the desired height
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.eWalletBankTransferScreen);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all((Color(0xFFF64CCC5))),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              )),
              ),
              child: Text(
                'Bank ABC',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
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
        title: AppbarTitle(text: "Top Up", margin: EdgeInsets.only(left: 13.h)),
        styleType: Style.bgFill);
  }

  /// Navigates back to the previous screen.
  arrowBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.eWalletMainScreen);
  }
}
