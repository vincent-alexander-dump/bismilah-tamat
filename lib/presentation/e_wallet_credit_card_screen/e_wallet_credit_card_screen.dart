import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_title.dart';
import 'package:vincent_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:vincent_s_application6/widgets/custom_elevated_button.dart';
import 'package:vincent_s_application6/widgets/custom_text_form_field.dart';

class EWalletCreditCardScreen extends StatelessWidget {
  EWalletCreditCardScreen({Key? key}) : super(key: key);

  final TextEditingController nomorkartuController = TextEditingController();

  final TextEditingController tanggalkadaluarsaController = TextEditingController();

  final TextEditingController cvvController = TextEditingController();

  final TextEditingController namadikartuController = TextEditingController();

  final TextEditingController nominalTopUpController = TextEditingController();

  final TextEditingController alamatController = TextEditingController();

  final TextEditingController kodeposController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: appBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      notifikasi(context),
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
                      nomorKartu(context),
                      SizedBox(height: 13.v),
                      Padding(
                          padding: EdgeInsets.only(left: 23.h, right: 49.h),
                          child: Row(children: [
                            tanggalKadaluarsa(context),
                            cvv(context)
                          ])),
                      SizedBox(height: 10.v),
                      nama(context),
                      SizedBox(height: 12.v),
                      nominal(context),
                      SizedBox(height: 40.v),
                      Padding(
                          padding: EdgeInsets.only(left: 23.h),
                          child: Text("Alamat tagihan",
                              style: CustomTextStyles.titleMediumBold)),
                      SizedBox(height: 21.v),
                      alamat(context),
                      SizedBox(height: 14.v),
                      kodepos(context),
                      SizedBox(height: 25.v),
                      warning(context),
                      SizedBox(height: 13.v),
                      confirm(context),
                      SizedBox(height: 5.v)
                    ]))));
  }

  Widget notifikasi(BuildContext context) {
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
                                "Kami memastikan bahwa informasi dari kartu anda tidak akan dapat diakses siapapun termasuk pihak Flow Ride.",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodySmallBlack90011))
                      ])))
        ]));
  }

  Widget nomorKartu(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 23.h, right: 49.h),
        child: CustomTextFormField(
          controller: nomorkartuController,
          hintText: "Nomor kartu",
          style: null,
        ));
  }

  Widget tanggalKadaluarsa(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 2.v),
        child: CustomTextFormField(
          width: 164.h,
          controller: tanggalkadaluarsaController,
          hintText: "Tanggal kadaluarsa",
          style: null,
        ));
  }

  Widget cvv(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 17.h),
        child: CustomTextFormField(
          width: 105.h,
          controller: cvvController,
          hintText: "CVV",
          style: null,
        ));
  }

  Widget nama(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 23.h, right: 49.h),
        child: CustomTextFormField(
            controller: namadikartuController, hintText: "Nama di kartu", style: null,));
  }

  Widget nominal(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 23.h, right: 49.h),
        child: CustomTextFormField(
          controller: nominalTopUpController,
          hintText: "Nominal TopUp",
          style: null,
        ));
  }

  Widget alamat(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 23.h, right: 49.h),
        child: CustomTextFormField(
            controller: alamatController,
            hintText: "Alamat",
            contentPadding:
                EdgeInsets.symmetric(horizontal: 8.h, vertical: 20.v), style: null,));
  }

  Widget kodepos(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 23.h, right: 49.h),
        child: CustomTextFormField(
            controller: kodeposController,
            hintText: "Kode pos",
            textInputAction: TextInputAction.done, style: null,));
  }

  Widget warning(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 20.v),
        decoration: AppDecoration.fillPink10001,
        child:  Container(
                  width: 239.h,
                  margin: EdgeInsets.only(right: 13.h),
                  child: Text(
                    "Rp.1000 akan dipotong sebagai biaya administrasi",
                     maxLines: 3,
                     overflow: TextOverflow.ellipsis,
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       fontSize: 14,
                       fontWeight: FontWeight.w300,
                       
                      )
                    )
                )
      );  
  }

  Widget confirm(BuildContext context) {
    return CustomElevatedButton(
        text: "CONFIRM",
        margin: EdgeInsets.only(left: 21.h, right: 23.h),
        onPressed: () {
          backConfirm(context);
        },
        alignment: Alignment.center);
  }

  PreferredSizeWidget appBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlue600,
            margin: EdgeInsets.only(left: 16.h, top: 26.v, bottom: 24.v),
            onTap: () {
              back(context);
            }),
        title: AppbarTitle(text: "Credit Card", margin: EdgeInsets.only(left: 13.h)),
        styleType: Style.bgFill);
  }

  back(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.eWalletTopupScreen);
  }

  backConfirm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.eWalletSuccessPaymentScreen);
  }
}
