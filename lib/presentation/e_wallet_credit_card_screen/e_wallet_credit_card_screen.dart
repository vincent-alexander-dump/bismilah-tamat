import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_title_button_five.dart';
import 'package:vincent_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:vincent_s_application6/widgets/custom_elevated_button.dart';
import 'package:vincent_s_application6/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EWalletCreditCardScreen extends StatelessWidget {
  EWalletCreditCardScreen({Key? key}) : super(key: key);

  TextEditingController nomorkartuController = TextEditingController();

  TextEditingController tanggalkadaluarsaController = TextEditingController();

  TextEditingController cvvController = TextEditingController();

  TextEditingController namadikartuController = TextEditingController();

  TextEditingController nominalTopUpController = TextEditingController();

  TextEditingController alamatController = TextEditingController();

  TextEditingController kodeposController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildInformasiKartu(context),
                      SizedBox(height: 18.v),
                      Padding(
                          padding: EdgeInsets.only(left: 23.h),
                          child: Text("Rincian Kartu",
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 7.v),
                      Padding(
                          padding: EdgeInsets.only(left: 23.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgVisa,
                                height: 60.adaptSize,
                                width: 60.adaptSize),
                            CustomImageView(
                                imagePath: ImageConstant.imgMastercard,
                                height: 60.adaptSize,
                                width: 60.adaptSize,
                                margin: EdgeInsets.only(left: 14.h))
                          ])),
                      SizedBox(height: 13.v),
                      _buildNomorkartu(context),
                      SizedBox(height: 13.v),
                      Padding(
                          padding: EdgeInsets.only(left: 23.h, right: 49.h),
                          child: Row(children: [
                            _buildTanggalkadaluarsa(context),
                            _buildCvv(context)
                          ])),
                      SizedBox(height: 10.v),
                      _buildNamadikartu(context),
                      SizedBox(height: 12.v),
                      _buildNominalTopUp(context),
                      SizedBox(height: 40.v),
                      Padding(
                          padding: EdgeInsets.only(left: 23.h),
                          child: Text("Alamat tagihan",
                              style: CustomTextStyles.titleMediumBold)),
                      SizedBox(height: 21.v),
                      _buildAlamat(context),
                      SizedBox(height: 14.v),
                      _buildKodepos(context),
                      SizedBox(height: 25.v),
                      _buildRp1000AkanDipotongSebagai(context),
                      SizedBox(height: 13.v),
                      _buildCONFIRM(context),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 66.v,
        title: AppbarTitleButtonFive(
            margin: EdgeInsets.only(left: 13.h),
            onTap: () {
              onTapCreditCard(context);
            }),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildInformasiKartu(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 8.v),
        decoration: AppDecoration.fillBlueGray,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgSecurityConfiguration,
              height: 60.adaptSize,
              width: 60.adaptSize,
              margin: EdgeInsets.only(bottom: 6.v)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Informasi kartu kredit anda dilindungi",
                            style: CustomTextStyles.titleSmallSemiBold15),
                        SizedBox(height: 2.v),
                        Container(
                            width: 239.h,
                            margin: EdgeInsets.only(right: 13.h),
                            child: Text(
                                "Kami memastikan bahwa informasi dari kartu anda tidak akan dapat diakses siapapun termasuk pihak PJek.",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style:
                                    CustomTextStyles.bodySmallBlack900Light12))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildNomorkartu(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 23.h, right: 49.h),
        child: CustomTextFormField(
            controller: nomorkartuController, hintText: "Nomor kartu"));
  }

  /// Section Widget
  Widget _buildTanggalkadaluarsa(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 2.v),
        child: CustomTextFormField(
            width: 164.h,
            controller: tanggalkadaluarsaController,
            hintText: "Tanggal kadaluarsa"));
  }

  /// Section Widget
  Widget _buildCvv(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 17.h),
        child: CustomTextFormField(
            width: 105.h, controller: cvvController, hintText: "CVV"));
  }

  /// Section Widget
  Widget _buildNamadikartu(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 23.h, right: 49.h),
        child: CustomTextFormField(
            controller: namadikartuController, hintText: "Nama di kartu"));
  }

  /// Section Widget
  Widget _buildNominalTopUp(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 23.h, right: 49.h),
        child: CustomTextFormField(
            controller: nominalTopUpController, hintText: "Nominal TopUp"));
  }

  /// Section Widget
  Widget _buildAlamat(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 23.h, right: 49.h),
        child: CustomTextFormField(
            controller: alamatController,
            hintText: "Alamat",
            contentPadding:
                EdgeInsets.symmetric(horizontal: 8.h, vertical: 20.v)));
  }

  /// Section Widget
  Widget _buildKodepos(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 23.h, right: 49.h),
        child: CustomTextFormField(
            controller: kodeposController,
            hintText: "Kode pos",
            textInputAction: TextInputAction.done));
  }

  /// Section Widget
  Widget _buildRp1000AkanDipotongSebagai(BuildContext context) {
    return CustomElevatedButton(
        height: 43.v,
        text: "Rp.1000 akan dipotong sebagai biaya administrasi.",
        buttonStyle: CustomButtonStyles.fillPink,
        buttonTextStyle: CustomTextStyles.bodyMediumExtraLight14);
  }

  /// Section Widget
  Widget _buildCONFIRM(BuildContext context) {
    return CustomElevatedButton(
        text: "CONFIRM",
        margin: EdgeInsets.only(left: 21.h, right: 23.h),
        onPressed: () {
          onTapCONFIRM(context);
        },
        alignment: Alignment.center);
  }

  /// Navigates to the eWalletTopupScreen when the action is triggered.
  onTapCreditCard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.eWalletTopupScreen);
  }

  /// Navigates to the eWalletSuccessPaymentScreen when the action is triggered.
  onTapCONFIRM(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.eWalletSuccessPaymentScreen);
  }
}
