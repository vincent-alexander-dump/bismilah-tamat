import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHome,
      activeIcon: ImageConstant.imgNavHome,
      title: "Home",
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavPromo,
      activeIcon: ImageConstant.imgNavPromo,
      title: "Promo",
      type: BottomBarEnum.Promo,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavInbox,
      activeIcon: ImageConstant.imgNavInbox,
      title: "Inbox",
      type: BottomBarEnum.Inbox,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavChat,
      activeIcon: ImageConstant.imgNavChat,
      title: "Chat",
      type: BottomBarEnum.Chat,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72.v,
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: SizedBox(
              height: 57.v,
              width: 44.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 53.v,
                      width: 44.h,
                      margin: EdgeInsets.only(
                        top: 1.v,
                        bottom: 3.v,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 2.h,
                        right: 3.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: bottomMenuList[index].icon,
                            height: 35.adaptSize,
                            width: 35.adaptSize,
                            margin: EdgeInsets.symmetric(horizontal: 2.h),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 6.v),
                            child: Text(
                              bottomMenuList[index].title ?? "",
                              style: CustomTextStyles.labelLargeBlack900Bold
                                  .copyWith(
                                color: appTheme.black900,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: AppDecoration.fillOnPrimaryContainer,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.v),
                    child: SizedBox(
                      width: 82.h,
                      child: Divider(
                        color: theme.colorScheme.primary,
                        indent: 3.h,
                        endIndent: 3.h,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 58.v,
                  width: 44.h,
                  margin: EdgeInsets.only(top: 6.v),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 53.v,
                          width: 44.h,
                          margin: EdgeInsets.only(
                            top: 2.v,
                            bottom: 3.v,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimaryContainer,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 3.h,
                            right: 6.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageView(
                                imagePath: bottomMenuList[index].activeIcon,
                                height: 35.adaptSize,
                                width: 35.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 7.v),
                                child: Text(
                                  bottomMenuList[index].title ?? "",
                                  style: CustomTextStyles.labelLargeBlack900Bold
                                      .copyWith(
                                    color: appTheme.black900,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Promo,
  Inbox,
  Chat,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
