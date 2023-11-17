import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_title_image.dart';
import 'package:vincent_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:vincent_s_application6/widgets/custom_elevated_button.dart';

class EWalletBankTransferScreen extends StatelessWidget {
  const EWalletBankTransferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      _buildAlarm(context),
                      SizedBox(height: 15.v),
                      _buildBiayaAdmin(context),
                      SizedBox(height: 11.v),
                      Divider(color: appTheme.gray400),
                      SizedBox(height: 13.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 44.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgAbc,
                                        height: 28.adaptSize,
                                        width: 28.adaptSize),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 36.h, top: 3.v, bottom: 5.v),
                                        child: Text("Bank ABC",
                                            style: theme.textTheme.titleMedium))
                                  ]))),
                      SizedBox(height: 9.v),
                      Divider(color: appTheme.gray400, indent: 40.h),
                      SizedBox(height: 9.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 45.h),
                              child: Text("No. Virtual Account :",
                                  style: CustomTextStyles.bodyLargeLight_1))),
                      SizedBox(height: 10.v),
                      Padding(
                          padding: EdgeInsets.only(right: 17.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("123 456 789 10",
                                    style: theme.textTheme.titleMedium),
                                Container(
                                    height: 18.v,
                                    width: 36.h,
                                    margin: EdgeInsets.only(left: 86.h),
                                    child: Stack(
                                        alignment: Alignment.centerRight,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: 18.v,
                                                  width: 36.h,
                                                  decoration: BoxDecoration(
                                                      color: theme.colorScheme
                                                          .onPrimaryContainer))),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Text("Salin",
                                                  style: CustomTextStyles
                                                      .titleSmallRedA200))
                                        ]))
                              ])),
                      SizedBox(height: 4.v),
                      Divider(color: appTheme.gray400, indent: 40.h),
                      SizedBox(height: 34.v),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 317.h,
                              margin: EdgeInsets.only(left: 16.h, right: 26.h),
                              child: Text(
                                  "Proses verifikasi dilakukan selama paling lama 10 menit setelah pembayaran berhasil.",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodyMediumLight_1))),
                      SizedBox(height: 24.v),
                      _buildCaraTopUpmenggunakanVirtualAcc(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildCONFIRM(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 68.v,
        title: Container(
            height: 34.510002.v,
            width: 174.h,
            margin: EdgeInsets.only(left: 13.h),
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      height: 34.v,
                      width: 174.h,
                      decoration: BoxDecoration(color: appTheme.blue600))),
              AppbarTitleImage(
                  imagePath: ImageConstant.imgArrowLeft,
                  margin: EdgeInsets.only(left: 1.h, right: 141.h, bottom: 7.v),
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              AppbarSubtitleOne(
                  text: "Bank Transfer",
                  margin: EdgeInsets.only(left: 41.h, right: 7.h, bottom: 10.v))
            ])),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildAlarm(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 9.v),
        decoration: AppDecoration.fillBlueGray,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgAlarm, height: 26.v, width: 31.h),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 6.v, bottom: 4.v),
              child: Text("Bank ABC akan memotong biaya admin sebesar Rp 1.000",
                  style: CustomTextStyles.bodySmallBlack900Light12))
        ]));
  }

  /// Section Widget
  Widget _buildBiayaAdmin(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Biaya admin ",
                      style: CustomTextStyles.titleSmallSemiBold15),
                  Text("Rp 1.000", style: CustomTextStyles.titleSmallSemiBold15)
                ])));
  }

  /// Section Widget
  Widget _buildCaraTopUpmenggunakanVirtualAcc(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 21.v),
        decoration: AppDecoration.fillPink10001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder43),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("Cara TopUp menggunakan Virtual Account :",
              style: theme.textTheme.titleMedium),
          SizedBox(height: 32.v),
          SizedBox(
              width: 319.h,
              child: Text(
                  "Buka akun Bank anda.\nkemudian klik pada bagian Transfer.\nsetelah tombol transfer dipencet, akan muncul pilihan Virtual Account. Tekan tombol tersebut.\nMasukkan nomor Virtual account sesuai dengan yang diberikan.\nSetelah masukkan nomor Virtual Account, masukkan jumlah nominal yang diinginkan.\nSelesai.",
                  maxLines: 10,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeLight_1)),
          SizedBox(height: 25.v)
        ]));
  }

  /// Section Widget
  Widget _buildCONFIRM(BuildContext context) {
    return CustomElevatedButton(
        text: "CONFIRM",
        margin: EdgeInsets.only(left: 21.h, right: 23.h, bottom: 20.v),
        onPressed: () {
          onTapCONFIRM(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the eWalletSuccessPaymentScreen when the action is triggered.
  onTapCONFIRM(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.eWalletSuccessPaymentScreen);
  }
}
