// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/presentation/help_screen/help_screen.dart';
import 'package:vincent_s_application6/presentation/main_screen_page/main_screen_page.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:vincent_s_application6/widgets/app_bar/custom_app_bar.dart';

class PromosTabContainerScreen extends StatefulWidget {
  const PromosTabContainerScreen({Key? key}) : super(key: key);

  @override
  PromosTabContainerScreenState createState() =>
      PromosTabContainerScreenState();
}

class PromosTabContainerScreenState extends State<PromosTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color(0xFF00A86B)),
                            foregroundColor: MaterialStateProperty.all(Colors.black),
                            padding: MaterialStateProperty.all(EdgeInsets.all(10.0)),
                            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 22)),
                            shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            ),
                            ),
                            minimumSize: MaterialStateProperty.all(
                            Size(double.infinity, 50.0), // Adjust the height (50.0) as needed
                            ),
                            elevation: MaterialStateProperty.all(0),
                          ),
                          child: Text("Promo"),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, AppRoutes.subscribeTabContainerScreen);
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 236, 227, 227)),
                            foregroundColor: MaterialStateProperty.all(Colors.black),
                            padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 10.0)),
                            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 22)),
                            shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                              ),              
                            ),
                            minimumSize: MaterialStateProperty.all(
                            Size(double.infinity, 50.0), // Adjust the height (50.0) as needed
                            ),
                            elevation: MaterialStateProperty.all(0),
                            ), 
                            child: Text("Subscribe"), 
                          )
                        ),
                      ]
                    ),
                Container(
              margin: EdgeInsets.fromLTRB(25, 25, 0, 5),
              child: Text(
                "Active Promo",
                style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold,),
              ),
            ),
             // Add space between the existing text and the new text
            Text(
              "       You don't have a promo yet",
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            SizedBox(height: 35.0), // Add space between the new text and the next widget
            Text(
            "     Promo For You",
            style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold,),
            ),
            Container(
              width: 350,
              height: 165,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.fromLTRB(20, 10, 0, 5),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 89, 188, 255),
                // border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                " QRIS UNLIMITED",
                style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0), // Add space between "QRIS UNLIMITED" and the new text
                  Text(
                    " ~ Cash back s/d 1000 PPay coins",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    " ~ Cash back s/d 1000 PPay coins",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    " ~ Cash back s/d 1000 PPay coins",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Divider(indent: 10.h, endIndent: 10.h, thickness: 2.0, color: Color.fromARGB(255, 255, 255, 255),)),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Ensure they are placed at opposite ends
                    children: [
                      Text(
                        " Rp. 1000",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Container(
                        width: 70,
                        padding: EdgeInsets.all(5.0), // Optional: Add padding as needed
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                        child: Text(
                          "Buy",
                          style: TextStyle(fontSize: 15, color: Colors.blueAccent, fontWeight: FontWeight.bold),
                        )
                        ),
                    ),
                    ],
                  )
                  )
                ]
            ),
            ),
            Container(
              width: 350,
              height: 165,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.fromLTRB(20, 10, 0, 5),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 89, 188, 255),
                // border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                " FlOW RIDE PROMO PACKAGES",
                style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0), // Add space between "QRIS UNLIMITED" and the new text
                  Text(
                    " ~ Cash back s/d 5000 PPay 2x",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    " ~ Cash back s/d 7500 PPay 2x",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    " ~ Gratis Biaya Admin 15x",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Divider(indent: 10.h, endIndent: 10.h, thickness: 2.0, color: Colors.white,)),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Ensure they are placed at opposite ends
                    children: [
                      Text(
                        "Rp. 69.999",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Container(
                        width: 70,
                        padding: EdgeInsets.all(5.0), // Optional: Add padding as needed
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                        child: Text(
                          "Buy",
                          style: TextStyle(fontSize: 15, color: Colors.blueAccent, fontWeight: FontWeight.bold)
                        )
                        ),
                    ),
                    ],
                  )
                  )
                ]
            ),
            )
            ]
        ),
      ),
    ),
  );
}
            
  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 47.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 15.h, top: 25.v, bottom: 25.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title:
            AppbarSubtitleOne(text: "Promo That I Have", margin: EdgeInsets.only(left: 8.h)),
        styleType: Style.bgFill);
  }
  /// Navigates to the mainScreenContainerScreen when the action is triggered.
  onTapArrowLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainScreenPage);
  }
}
