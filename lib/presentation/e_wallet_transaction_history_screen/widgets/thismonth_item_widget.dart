import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/presentation/e_wallet_transaction_details_screen/e_wallet_transaction_details_screen.dart';

class ThismonthItemWidget extends StatelessWidget {
  const ThismonthItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EWalletTransactionDetailsScreen(),
            ),
          );
      },
      child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            imagePath: ImageConstant.imgFiat500,
            height: 40.adaptSize,
            width: 40.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 5.v,
              bottom: 7.5.v
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "FlowDrive",
                  style: theme.textTheme.labelMedium,
                ),
                SizedBox(height: 6.v),
                Text(
                  "20 June 2023, 00.56",
                  style: CustomTextStyles.bodySmallBlack900Light12,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              bottom: 10.v,
            ),
            child: Text(
              "-Rp.250.000",
              style: theme.textTheme.labelMedium,
            ),
          ),
        ],
      ),
      )
    )
    );
  }
}
