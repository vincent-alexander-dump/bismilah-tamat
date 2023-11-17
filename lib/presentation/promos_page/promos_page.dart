import '../promos_page/widgets/promos_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class PromosPage extends StatefulWidget {
  const PromosPage({Key? key})
      : super(
          key: key,
        );

  @override
  PromosPageState createState() => PromosPageState();
}

class PromosPageState extends State<PromosPage>
    with AutomaticKeepAliveClientMixin<PromosPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 18.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  right: 15.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 11.h),
                      child: Text(
                        "Active subscription",
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                    SizedBox(height: 13.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 11.h,
                        right: 38.h,
                      ),
                      child: Row(
                        children: [
                          CustomIconButton(
                            height: 60.adaptSize,
                            width: 60.adaptSize,
                            padding: EdgeInsets.all(3.h),
                            decoration: IconButtonStyleHelper.fillPink,
                            child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgFlatColorIconsBinoculars,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 7.v,
                              bottom: 7.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "You don't have a package yet, here",
                                  style:
                                      CustomTextStyles.labelLargeBlack900Bold_2,
                                ),
                                SizedBox(height: 1.v),
                                SizedBox(
                                  width: 300.h,
                                  child: Text(
                                    "Buy it first, come on! Later your package \nwill appear here.",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.bodySmallBlack90011,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 32.v),
                    Padding(
                      padding: EdgeInsets.only(left: 11.h),
                      child: Text(
                        "Subscribe for you",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    _buildPromos(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPromos(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 8.v,
        );
      },
      itemCount: 2,
      itemBuilder: (context, index) {
        return PromosItemWidget();
      },
    );
  }
}
